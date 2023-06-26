################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/lvglApplication/screens/ui_Screen1.c 

OBJS += \
./Core/App/lvglApplication/screens/ui_Screen1.o 

C_DEPS += \
./Core/App/lvglApplication/screens/ui_Screen1.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/lvglApplication/screens/%.o Core/App/lvglApplication/screens/%.su Core/App/lvglApplication/screens/%.cyclo: ../Core/App/lvglApplication/screens/%.c Core/App/lvglApplication/screens/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-lvglApplication-2f-screens

clean-Core-2f-App-2f-lvglApplication-2f-screens:
	-$(RM) ./Core/App/lvglApplication/screens/ui_Screen1.cyclo ./Core/App/lvglApplication/screens/ui_Screen1.d ./Core/App/lvglApplication/screens/ui_Screen1.o ./Core/App/lvglApplication/screens/ui_Screen1.su

.PHONY: clean-Core-2f-App-2f-lvglApplication-2f-screens

