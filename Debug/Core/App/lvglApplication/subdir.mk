################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/lvglApplication/ui.c \
../Core/App/lvglApplication/ui_helpers.c 

OBJS += \
./Core/App/lvglApplication/ui.o \
./Core/App/lvglApplication/ui_helpers.o 

C_DEPS += \
./Core/App/lvglApplication/ui.d \
./Core/App/lvglApplication/ui_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/lvglApplication/%.o Core/App/lvglApplication/%.su Core/App/lvglApplication/%.cyclo: ../Core/App/lvglApplication/%.c Core/App/lvglApplication/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-lvglApplication

clean-Core-2f-App-2f-lvglApplication:
	-$(RM) ./Core/App/lvglApplication/ui.cyclo ./Core/App/lvglApplication/ui.d ./Core/App/lvglApplication/ui.o ./Core/App/lvglApplication/ui.su ./Core/App/lvglApplication/ui_helpers.cyclo ./Core/App/lvglApplication/ui_helpers.d ./Core/App/lvglApplication/ui_helpers.o ./Core/App/lvglApplication/ui_helpers.su

.PHONY: clean-Core-2f-App-2f-lvglApplication

