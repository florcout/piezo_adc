################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/src/bsp.c 

OBJS += \
./bsp/src/bsp.o 

C_DEPS += \
./bsp/src/bsp.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/src/%.o: ../bsp/src/%.c bsp/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746NG -c -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/app/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/bsp/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/core" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/device/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

