/*
 * i2c_bsp.c
 *
 *  Created on: Jul 12, 2022
 *      Author: Admin
 */


#include "i2c_bsp.h"
#include "i2c.h"

#define i2c_master hi2c1

void i2c_init(void){

}
void i2c_read(uint16_t addr,uint8_t *data,uint16_t length){
	HAL_I2C_Master_Receive(&i2c_master,addr, data, length,0xffff);
}
void i2c_write(uint16_t addr, uint8_t *pData,uint16_t Size){
	HAL_I2C_Master_Transmit(&i2c_master,addr, pData, Size, 0xffff);
}

