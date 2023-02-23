################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../cmsis/device/src/startup_stm32f746xx.s 

C_SRCS += \
../cmsis/device/src/system_stm32f7xx.c 

OBJS += \
./cmsis/device/src/startup_stm32f746xx.o \
./cmsis/device/src/system_stm32f7xx.o 

S_DEPS += \
./cmsis/device/src/startup_stm32f746xx.d 

C_DEPS += \
./cmsis/device/src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
cmsis/device/src/%.o: ../cmsis/device/src/%.s cmsis/device/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"
cmsis/device/src/%.o: ../cmsis/device/src/%.c cmsis/device/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746NG -c -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/app/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/bsp/inc" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/core" -I"C:/Users/florent/STM32CubeIDE/workspace_1.7.0/piezo_adc/cmsis/device/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

