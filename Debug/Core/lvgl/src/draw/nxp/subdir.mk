################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/nxp/lv_gpu_nxp.c 

OBJS += \
./Core/lvgl/src/draw/nxp/lv_gpu_nxp.o 

C_DEPS += \
./Core/lvgl/src/draw/nxp/lv_gpu_nxp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/nxp/%.o Core/lvgl/src/draw/nxp/%.su Core/lvgl/src/draw/nxp/%.cyclo: ../Core/lvgl/src/draw/nxp/%.c Core/lvgl/src/draw/nxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp

clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp:
	-$(RM) ./Core/lvgl/src/draw/nxp/lv_gpu_nxp.cyclo ./Core/lvgl/src/draw/nxp/lv_gpu_nxp.d ./Core/lvgl/src/draw/nxp/lv_gpu_nxp.o ./Core/lvgl/src/draw/nxp/lv_gpu_nxp.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp

