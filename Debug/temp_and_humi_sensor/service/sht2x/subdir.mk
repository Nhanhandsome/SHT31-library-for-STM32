################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../temp_and_humi_sensor/service/sht2x/sht2x.c 

OBJS += \
./temp_and_humi_sensor/service/sht2x/sht2x.o 

C_DEPS += \
./temp_and_humi_sensor/service/sht2x/sht2x.d 


# Each subdirectory must supply rules for building sources it contributes
temp_and_humi_sensor/service/sht2x/%.o temp_and_humi_sensor/service/sht2x/%.su: ../temp_and_humi_sensor/service/sht2x/%.c temp_and_humi_sensor/service/sht2x/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L072xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/bsp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service/sht3x" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/port" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/ascii" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/rtu" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/tcp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/app" -O0 -ffunction-sections -fdata-sections -Wall -u_printf_float -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-temp_and_humi_sensor-2f-service-2f-sht2x

clean-temp_and_humi_sensor-2f-service-2f-sht2x:
	-$(RM) ./temp_and_humi_sensor/service/sht2x/sht2x.d ./temp_and_humi_sensor/service/sht2x/sht2x.o ./temp_and_humi_sensor/service/sht2x/sht2x.su

.PHONY: clean-temp_and_humi_sensor-2f-service-2f-sht2x

