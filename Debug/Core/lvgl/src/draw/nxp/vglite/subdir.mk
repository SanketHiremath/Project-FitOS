################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.c 

OBJS += \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.o 

C_DEPS += \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/nxp/vglite/%.o Core/lvgl/src/draw/nxp/vglite/%.su Core/lvgl/src/draw/nxp/vglite/%.cyclo: ../Core/lvgl/src/draw/nxp/vglite/%.c Core/lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.cyclo ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.su ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.cyclo ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./Core/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.su ./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.cyclo ./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.d ./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.o ./Core/lvgl/src/draw/nxp/vglite/lv_gpu_nxp_vglite.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

