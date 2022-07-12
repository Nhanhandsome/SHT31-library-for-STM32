/*
 * sht3x.c
 *
 *  Created on: Jul 12, 2022
 *      Author: Admin
 */

#include "sht3x.h"
#include "i2c_bsp.h"

static bool read_temp_humi_imlp(SHT3x *p_sht);
static bool write_command(SHT3x *p_sht, uint16_t cmd);
static void read_bytes_imlp(SHT3x *p_sht, uint8_t *buff, uint16_t length);
static uint8_t crc8(const uint8_t *data, int len);

bool SHT_begin(SHT3x *p_sht) {
	p_sht->addr = SHT31_DEFAULT_ADDR;
	p_sht->humidity = 0;
	p_sht->temperature = 0;
	p_sht->readTempHum = read_temp_humi_imlp;
	p_sht->writeCommand = write_command;
	p_sht->readbytes = read_bytes_imlp;
	return true;
}
float SHT_read_temp(SHT3x *p_sht) {
	return p_sht->temperature;
}
float SHT_read_humi(SHT3x *p_sht) {
	return p_sht->humidity;
}
uint16_t SHT_read_status(SHT3x *p_sht) {
	p_sht->writeCommand(p_sht, SHT31_READSTATUS);
	uint8_t data[3];
	p_sht->readbytes(p_sht, data, 3);
	uint16_t stat = data[0];
	stat <<= 8;
	stat |= data[1];
	return stat;
}
void SHT_reset(SHT3x *p_sht) {
	p_sht->writeCommand(p_sht, SHT31_SOFTRESET);
}
void SHT_heater(SHT3x *p_sht, bool h) {
	if (h) {
		p_sht->writeCommand(p_sht, SHT31_HEATEREN);
	} else {
		p_sht->writeCommand(p_sht, SHT31_HEATERDIS);
	}
}
bool SHT_isHeaterEnabled(SHT3x *p_sht) {
	return true;
}
void SHT_mesure(SHT3x *p_sht){
	p_sht->readTempHum(p_sht);
}
static bool read_temp_humi_imlp(SHT3x *p_sht) {
	uint8_t readbuffer[6];
	p_sht->writeCommand(p_sht, SHT31_MEAS_HIGHREP);
	p_sht->readbytes(p_sht, readbuffer, sizeof(readbuffer));
	if (readbuffer[2] != crc8(readbuffer, 2)
			|| readbuffer[5] != crc8(readbuffer + 3, 2))
		return false;
	int32_t stemp = (int32_t) (((uint32_t) readbuffer[0] << 8) | readbuffer[1]);
	// simplified (65536 instead of 65535) integer version of:
	// temp = (stemp * 175.0f) / 65535.0f - 45.0f;
	stemp = ((4375 * stemp) >> 14) - 4500;
	p_sht->temperature = (float) stemp / 100.0f;

	uint32_t shum = ((uint32_t) readbuffer[3] << 8) | readbuffer[4];
	// simplified (65536 instead of 65535) integer version of:
	// humidity = (shum * 100.0f) / 65535.0f;
	shum = (625 * shum) >> 12;
	p_sht->humidity = (float) shum / 100.0f;

	return true;
}
static bool write_command(SHT3x *p_sht, uint16_t cmd) {
	uint8_t data[2];
	data[0] = (uint8_t)(cmd & 0xff00)>>8;
	data[1] = (uint8_t)(cmd & 0x00ff);
	i2c_write(p_sht->addr,(uint8_t*)data, sizeof(data));
	return true;
}
static void read_bytes_imlp(SHT3x *p_sht, uint8_t *buff, uint16_t length) {
	i2c_read(p_sht->addr, buff, length);
}
static uint8_t crc8(const uint8_t *data, int len) {
  /*
   *
   * CRC-8 formula from page 14 of SHT spec pdf
   *
   * Test data 0xBE, 0xEF should yield 0x92
   *
   * Initialization data 0xFF
   * Polynomial 0x31 (x8 + x5 +x4 +1)
   * Final XOR 0x00
   */

  const uint8_t POLYNOMIAL = 0x31;
  uint8_t crc = 0xFF;

  for (int j = len; j; --j) {
    crc ^= *data++;

    for (int i = 8; i; --i) {
      crc = (crc & 0x80) ? (crc << 1) ^ POLYNOMIAL : (crc << 1);
    }
  }
  return crc;
}
SHT3x sht31;
