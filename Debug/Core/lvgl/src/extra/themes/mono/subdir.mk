################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/extra/themes/mono/lv_theme_mono.c 

OBJS += \
./Core/lvgl/src/extra/themes/mono/lv_theme_mono.o 

C_DEPS += \
./Core/lvgl/src/extra/themes/mono/lv_theme_mono.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/extra/themes/mono/%.o Core/lvgl/src/extra/themes/mono/%.su Core/lvgl/src/extra/themes/mono/%.cyclo: ../Core/lvgl/src/extra/themes/mono/%.c Core/lvgl/src/extra/themes/mono/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-extra-2f-themes-2f-mono

clean-Core-2f-lvgl-2f-src-2f-extra-2f-themes-2f-mono:
	-$(RM) ./Core/lvgl/src/extra/themes/mono/lv_theme_mono.cyclo ./Core/lvgl/src/extra/themes/mono/lv_theme_mono.d ./Core/lvgl/src/extra/themes/mono/lv_theme_mono.o ./Core/lvgl/src/extra/themes/mono/lv_theme_mono.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-extra-2f-themes-2f-mono

