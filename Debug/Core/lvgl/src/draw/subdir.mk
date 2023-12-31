################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/lv_draw.c \
../Core/lvgl/src/draw/lv_draw_arc.c \
../Core/lvgl/src/draw/lv_draw_img.c \
../Core/lvgl/src/draw/lv_draw_label.c \
../Core/lvgl/src/draw/lv_draw_layer.c \
../Core/lvgl/src/draw/lv_draw_line.c \
../Core/lvgl/src/draw/lv_draw_mask.c \
../Core/lvgl/src/draw/lv_draw_rect.c \
../Core/lvgl/src/draw/lv_draw_transform.c \
../Core/lvgl/src/draw/lv_draw_triangle.c \
../Core/lvgl/src/draw/lv_img_buf.c \
../Core/lvgl/src/draw/lv_img_cache.c \
../Core/lvgl/src/draw/lv_img_decoder.c 

OBJS += \
./Core/lvgl/src/draw/lv_draw.o \
./Core/lvgl/src/draw/lv_draw_arc.o \
./Core/lvgl/src/draw/lv_draw_img.o \
./Core/lvgl/src/draw/lv_draw_label.o \
./Core/lvgl/src/draw/lv_draw_layer.o \
./Core/lvgl/src/draw/lv_draw_line.o \
./Core/lvgl/src/draw/lv_draw_mask.o \
./Core/lvgl/src/draw/lv_draw_rect.o \
./Core/lvgl/src/draw/lv_draw_transform.o \
./Core/lvgl/src/draw/lv_draw_triangle.o \
./Core/lvgl/src/draw/lv_img_buf.o \
./Core/lvgl/src/draw/lv_img_cache.o \
./Core/lvgl/src/draw/lv_img_decoder.o 

C_DEPS += \
./Core/lvgl/src/draw/lv_draw.d \
./Core/lvgl/src/draw/lv_draw_arc.d \
./Core/lvgl/src/draw/lv_draw_img.d \
./Core/lvgl/src/draw/lv_draw_label.d \
./Core/lvgl/src/draw/lv_draw_layer.d \
./Core/lvgl/src/draw/lv_draw_line.d \
./Core/lvgl/src/draw/lv_draw_mask.d \
./Core/lvgl/src/draw/lv_draw_rect.d \
./Core/lvgl/src/draw/lv_draw_transform.d \
./Core/lvgl/src/draw/lv_draw_triangle.d \
./Core/lvgl/src/draw/lv_img_buf.d \
./Core/lvgl/src/draw/lv_img_cache.d \
./Core/lvgl/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/%.o Core/lvgl/src/draw/%.su Core/lvgl/src/draw/%.cyclo: ../Core/lvgl/src/draw/%.c Core/lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw

clean-Core-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./Core/lvgl/src/draw/lv_draw.cyclo ./Core/lvgl/src/draw/lv_draw.d ./Core/lvgl/src/draw/lv_draw.o ./Core/lvgl/src/draw/lv_draw.su ./Core/lvgl/src/draw/lv_draw_arc.cyclo ./Core/lvgl/src/draw/lv_draw_arc.d ./Core/lvgl/src/draw/lv_draw_arc.o ./Core/lvgl/src/draw/lv_draw_arc.su ./Core/lvgl/src/draw/lv_draw_img.cyclo ./Core/lvgl/src/draw/lv_draw_img.d ./Core/lvgl/src/draw/lv_draw_img.o ./Core/lvgl/src/draw/lv_draw_img.su ./Core/lvgl/src/draw/lv_draw_label.cyclo ./Core/lvgl/src/draw/lv_draw_label.d ./Core/lvgl/src/draw/lv_draw_label.o ./Core/lvgl/src/draw/lv_draw_label.su ./Core/lvgl/src/draw/lv_draw_layer.cyclo ./Core/lvgl/src/draw/lv_draw_layer.d ./Core/lvgl/src/draw/lv_draw_layer.o ./Core/lvgl/src/draw/lv_draw_layer.su ./Core/lvgl/src/draw/lv_draw_line.cyclo ./Core/lvgl/src/draw/lv_draw_line.d ./Core/lvgl/src/draw/lv_draw_line.o ./Core/lvgl/src/draw/lv_draw_line.su ./Core/lvgl/src/draw/lv_draw_mask.cyclo ./Core/lvgl/src/draw/lv_draw_mask.d ./Core/lvgl/src/draw/lv_draw_mask.o ./Core/lvgl/src/draw/lv_draw_mask.su ./Core/lvgl/src/draw/lv_draw_rect.cyclo ./Core/lvgl/src/draw/lv_draw_rect.d ./Core/lvgl/src/draw/lv_draw_rect.o ./Core/lvgl/src/draw/lv_draw_rect.su ./Core/lvgl/src/draw/lv_draw_transform.cyclo ./Core/lvgl/src/draw/lv_draw_transform.d ./Core/lvgl/src/draw/lv_draw_transform.o ./Core/lvgl/src/draw/lv_draw_transform.su ./Core/lvgl/src/draw/lv_draw_triangle.cyclo ./Core/lvgl/src/draw/lv_draw_triangle.d ./Core/lvgl/src/draw/lv_draw_triangle.o ./Core/lvgl/src/draw/lv_draw_triangle.su ./Core/lvgl/src/draw/lv_img_buf.cyclo ./Core/lvgl/src/draw/lv_img_buf.d ./Core/lvgl/src/draw/lv_img_buf.o ./Core/lvgl/src/draw/lv_img_buf.su ./Core/lvgl/src/draw/lv_img_cache.cyclo ./Core/lvgl/src/draw/lv_img_cache.d ./Core/lvgl/src/draw/lv_img_cache.o ./Core/lvgl/src/draw/lv_img_cache.su ./Core/lvgl/src/draw/lv_img_decoder.cyclo ./Core/lvgl/src/draw/lv_img_decoder.d ./Core/lvgl/src/draw/lv_img_decoder.o ./Core/lvgl/src/draw/lv_img_decoder.su

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw

