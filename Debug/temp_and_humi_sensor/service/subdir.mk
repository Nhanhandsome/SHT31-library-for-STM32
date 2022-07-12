################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../temp_and_humi_sensor/service/sht3x.c 

OBJS += \
./temp_and_humi_sensor/service/sht3x.o 

C_DEPS += \
./temp_and_humi_sensor/service/sht3x.d 


# Each subdirectory must supply rules for building sources it contributes
temp_and_humi_sensor/service/%.o temp_and_humi_sensor/service/%.su: ../temp_and_humi_sensor/service/%.c temp_and_humi_sensor/service/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L072xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/bsp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service" -O0 -ffunction-sections -fdata-sections -Wall -u_printf_float -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-temp_and_humi_sensor-2f-service

clean-temp_and_humi_sensor-2f-service:
	-$(RM) ./temp_and_humi_sensor/service/sht3x.d ./temp_and_humi_sensor/service/sht3x.o ./temp_and_humi_sensor/service/sht3x.su

.PHONY: clean-temp_and_humi_sensor-2f-service

