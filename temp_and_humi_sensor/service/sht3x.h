/*
 * sht3x.h
 *
 *  Created on: Jul 12, 2022
 *      Author: Admin
 */

#ifndef SERVICE_SHT3X_H_
#define SERVICE_SHT3X_H_

#include "stdbool.h"
#include "stdint.h"
#define SHT31_DEFAULT_ADDR 0x44 /**< SHT31 Default Address */
#define SHT31_MEAS_HIGHREP_STRETCH  0x2C06 /**< Measurement High Repeatability with Clock Stretch Enabled */
#define SHT31_MEAS_MEDREP_STRETCH  0x2C0D /**< Measurement Medium Repeatability with Clock Stretch Enabled */
#define SHT31_MEAS_LOWREP_STRETCH  0x2C10 /**< Measurement Low Repeatability with Clock Stretch Enabled*/
#define SHT31_MEAS_HIGHREP   0x2400 /**< Measurement High Repeatability with Clock Stretch Disabled */
#define SHT31_MEAS_MEDREP  0x240B /**< Measurement Medium Repeatability with Clock Stretch Disabled */
#define SHT31_MEAS_LOWREP  0x2416 /**< Measurement Low Repeatability with Clock Stretch Disabled */
#define SHT31_READSTATUS 0xF32D   /**< Read Out of Status Register */
#define SHT31_CLEARSTATUS 0x3041  /**< Clear Status */
#define SHT31_SOFTRESET 0x30A2    /**< Soft Reset */
#define SHT31_HEATEREN 0x306D     /**< Heater Enable */
#define SHT31_HEATERDIS 0x3066    /**< Heater Disable */
#define SHT31_REG_HEATER_BIT 0x0d /**< Status Register Heater Bit */

typedef struct SHT3x_t SHT3x;

struct SHT3x_t {
	uint8_t addr;
	float humidity;
	float temperature;
	bool (*readTempHum)(SHT3x *p_sht);
	bool (*writeCommand)(SHT3x *p_sht, uint16_t cmd);
};

bool SHT_begin(SHT3x *p_sht);
float SHT_read_temp(SHT3x *p_sht);
float SHT_read_humi(SHT3x *p_sht);
uint16_t SHT_read_status(SHT3x *p_sht);
void SHT_reset(SHT3x *p_sht);
void SHT_heater(SHT3x *p_sht, bool h);
bool SHT_isHeaterEnabled(SHT3x *p_sht);
void SHT_mesure(SHT3x *p_sht);

extern SHT3x sht31;
#endif /* SERVICE_SHT3X_H_ */
