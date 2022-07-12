/*
 * i2c_bsp.h
 *
 *  Created on: Jul 12, 2022
 *      Author: Admin
 */

#ifndef BSP_I2C_BSP_H_
#define BSP_I2C_BSP_H_


#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "stdint.h"



void i2c_init(void);
void i2c_read(uint16_t addr,uint8_t *data,uint16_t length);
void i2c_write(uint16_t addr, uint8_t *pData,uint16_t Size);


#endif /* BSP_I2C_BSP_H_ */
