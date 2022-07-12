################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeModbus/freemodbus/port/portcritial.c \
../FreeModbus/freemodbus/port/portevent.c \
../FreeModbus/freemodbus/port/portserial.c \
../FreeModbus/freemodbus/port/porttimer.c 

OBJS += \
./FreeModbus/freemodbus/port/portcritial.o \
./FreeModbus/freemodbus/port/portevent.o \
./FreeModbus/freemodbus/port/portserial.o \
./FreeModbus/freemodbus/port/porttimer.o 

C_DEPS += \
./FreeModbus/freemodbus/port/portcritial.d \
./FreeModbus/freemodbus/port/portevent.d \
./FreeModbus/freemodbus/port/portserial.d \
./FreeModbus/freemodbus/port/porttimer.d 


# Each subdirectory must supply rules for building sources it contributes
FreeModbus/freemodbus/port/%.o FreeModbus/freemodbus/port/%.su: ../FreeModbus/freemodbus/port/%.c FreeModbus/freemodbus/port/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L072xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/bsp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service/sht3x" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/port" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/ascii" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/rtu" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/tcp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/app" -O0 -ffunction-sections -fdata-sections -Wall -u_printf_float -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeModbus-2f-freemodbus-2f-port

clean-FreeModbus-2f-freemodbus-2f-port:
	-$(RM) ./FreeModbus/freemodbus/port/portcritial.d ./FreeModbus/freemodbus/port/portcritial.o ./FreeModbus/freemodbus/port/portcritial.su ./FreeModbus/freemodbus/port/portevent.d ./FreeModbus/freemodbus/port/portevent.o ./FreeModbus/freemodbus/port/portevent.su ./FreeModbus/freemodbus/port/portserial.d ./FreeModbus/freemodbus/port/portserial.o ./FreeModbus/freemodbus/port/portserial.su ./FreeModbus/freemodbus/port/porttimer.d ./FreeModbus/freemodbus/port/porttimer.o ./FreeModbus/freemodbus/port/porttimer.su

.PHONY: clean-FreeModbus-2f-freemodbus-2f-port

