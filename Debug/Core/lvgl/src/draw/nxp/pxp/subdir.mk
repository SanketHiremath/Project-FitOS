################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
../Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
../Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c 

OBJS += \
./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.o \
./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o \
./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o 

C_DEPS += \
./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.d \
./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d \
./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/nxp/pxp/%.o Core/lvgl/src/draw/nxp/pxp/%.su Core/lvgl/src/draw/nxp/pxp/%.cyclo: ../Core/lvgl/src/draw/nxp/pxp/%.c Core/lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.cyclo ./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.d ./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.o ./Core/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.su ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.cyclo ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.su ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.cyclo ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o ./Core/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

