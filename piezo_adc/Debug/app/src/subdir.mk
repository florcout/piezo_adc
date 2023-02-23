################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/src/main.c \
../app/src/printf-stdarg.c \
../app/src/stm32f7xx_it.c 

OBJS += \
./app/src/main.o \
./app/src/printf-stdarg.o \
./app/src/stm32f7xx_it.o 

C_DEPS += \
./app/src/main.d \
./app/src/printf-stdarg.d \
./app/src/stm32f7xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/%.o: ../app/src/%.c app/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746NG -c -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/app/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/bsp/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/core" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/device/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

