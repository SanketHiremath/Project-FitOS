################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/Hardware/fonts.c \
../Core/App/Hardware/gc9a01.c \
../Core/App/Hardware/hardware_init.c 

OBJS += \
./Core/App/Hardware/fonts.o \
./Core/App/Hardware/gc9a01.o \
./Core/App/Hardware/hardware_init.o 

C_DEPS += \
./Core/App/Hardware/fonts.d \
./Core/App/Hardware/gc9a01.d \
./Core/App/Hardware/hardware_init.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/Hardware/%.o Core/App/Hardware/%.su Core/App/Hardware/%.cyclo: ../Core/App/Hardware/%.c Core/App/Hardware/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-Hardware

clean-Core-2f-App-2f-Hardware:
	-$(RM) ./Core/App/Hardware/fonts.cyclo ./Core/App/Hardware/fonts.d ./Core/App/Hardware/fonts.o ./Core/App/Hardware/fonts.su ./Core/App/Hardware/gc9a01.cyclo ./Core/App/Hardware/gc9a01.d ./Core/App/Hardware/gc9a01.o ./Core/App/Hardware/gc9a01.su ./Core/App/Hardware/hardware_init.cyclo ./Core/App/Hardware/hardware_init.d ./Core/App/Hardware/hardware_init.o ./Core/App/Hardware/hardware_init.su

.PHONY: clean-Core-2f-App-2f-Hardware

