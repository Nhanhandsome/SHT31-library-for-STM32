/*
 * sht2x.h
 *
 *  Created on: Jul 12, 2022
 *      Author: Admin
 */

#ifndef SERVICE_SHT2X_SHT2X_H_
#define SERVICE_SHT2X_SHT2X_H_


#define SHT2x_I2C_ADDR			0x40
#define SHT2x_HOLD_MASTER		1
#define SHT2x_READ_TEMP_HOLD	0xe3
#define	SHT2x_READ_RH_HOLD		0xe5
#define SHT2x_READ_TEMP_NOHOLD	0xf3
#define SHT2x_READ_RH_NOHOLD	0xf5
#define	SHT2x_WRITE_REG			0xe6
#define SHT2x_READ_REG			0xe7
#define SHT2x_SOFT_RESET		0xfe
#define SHT2x_TIMEOUT			1000

typedef enum SHT2x_Resolution {
	RES_14_12 = 0x00,
	RES_12_8 = 0x01,
	RES_13_10 = 0x80,
	RES_11_11 = 0x81,
} SHT2x_Resolution;

typedef struct SHT2x_t SHT2x;

struct SHT2x_t{
	float temp;
	float humi;

};
#endif /* SERVICE_SHT2X_SHT2X_H_ */
