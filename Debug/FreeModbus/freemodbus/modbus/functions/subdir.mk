################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeModbus/freemodbus/modbus/functions/mbfunccoils.c \
../FreeModbus/freemodbus/modbus/functions/mbfuncdiag.c \
../FreeModbus/freemodbus/modbus/functions/mbfuncdisc.c \
../FreeModbus/freemodbus/modbus/functions/mbfuncholding.c \
../FreeModbus/freemodbus/modbus/functions/mbfuncinput.c \
../FreeModbus/freemodbus/modbus/functions/mbfuncother.c \
../FreeModbus/freemodbus/modbus/functions/mbutils.c 

OBJS += \
./FreeModbus/freemodbus/modbus/functions/mbfunccoils.o \
./FreeModbus/freemodbus/modbus/functions/mbfuncdiag.o \
./FreeModbus/freemodbus/modbus/functions/mbfuncdisc.o \
./FreeModbus/freemodbus/modbus/functions/mbfuncholding.o \
./FreeModbus/freemodbus/modbus/functions/mbfuncinput.o \
./FreeModbus/freemodbus/modbus/functions/mbfuncother.o \
./FreeModbus/freemodbus/modbus/functions/mbutils.o 

C_DEPS += \
./FreeModbus/freemodbus/modbus/functions/mbfunccoils.d \
./FreeModbus/freemodbus/modbus/functions/mbfuncdiag.d \
./FreeModbus/freemodbus/modbus/functions/mbfuncdisc.d \
./FreeModbus/freemodbus/modbus/functions/mbfuncholding.d \
./FreeModbus/freemodbus/modbus/functions/mbfuncinput.d \
./FreeModbus/freemodbus/modbus/functions/mbfuncother.d \
./FreeModbus/freemodbus/modbus/functions/mbutils.d 


# Each subdirectory must supply rules for building sources it contributes
FreeModbus/freemodbus/modbus/functions/%.o FreeModbus/freemodbus/modbus/functions/%.su: ../FreeModbus/freemodbus/modbus/functions/%.c FreeModbus/freemodbus/modbus/functions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L072xx -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/bsp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/temp_and_humi_sensor/service/sht3x" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/port" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/ascii" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/rtu" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/modbus/tcp" -I"C:/Users/Admin/STM32CubeIDE/workspace_1.9.0/TempAndHumiSensor/FreeModbus/freemodbus/app" -O0 -ffunction-sections -fdata-sections -Wall -u_printf_float -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeModbus-2f-freemodbus-2f-modbus-2f-functions

clean-FreeModbus-2f-freemodbus-2f-modbus-2f-functions:
	-$(RM) ./FreeModbus/freemodbus/modbus/functions/mbfunccoils.d ./FreeModbus/freemodbus/modbus/functions/mbfunccoils.o ./FreeModbus/freemodbus/modbus/functions/mbfunccoils.su ./FreeModbus/freemodbus/modbus/functions/mbfuncdiag.d ./FreeModbus/freemodbus/modbus/functions/mbfuncdiag.o ./FreeModbus/freemodbus/modbus/functions/mbfuncdiag.su ./FreeModbus/freemodbus/modbus/functions/mbfuncdisc.d ./FreeModbus/freemodbus/modbus/functions/mbfuncdisc.o ./FreeModbus/freemodbus/modbus/functions/mbfuncdisc.su ./FreeModbus/freemodbus/modbus/functions/mbfuncholding.d ./FreeModbus/freemodbus/modbus/functions/mbfuncholding.o ./FreeModbus/freemodbus/modbus/functions/mbfuncholding.su ./FreeModbus/freemodbus/modbus/functions/mbfuncinput.d ./FreeModbus/freemodbus/modbus/functions/mbfuncinput.o ./FreeModbus/freemodbus/modbus/functions/mbfuncinput.su ./FreeModbus/freemodbus/modbus/functions/mbfuncother.d ./FreeModbus/freemodbus/modbus/functions/mbfuncother.o ./FreeModbus/freemodbus/modbus/functions/mbfuncother.su ./FreeModbus/freemodbus/modbus/functions/mbutils.d ./FreeModbus/freemodbus/modbus/functions/mbutils.o ./FreeModbus/freemodbus/modbus/functions/mbutils.su

.PHONY: clean-FreeModbus-2f-freemodbus-2f-modbus-2f-functions

