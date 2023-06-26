################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/lvglApplication/images/ui_img_1117480529.c \
../Core/App/lvglApplication/images/ui_img_pastel_purple_png.c \
../Core/App/lvglApplication/images/ui_img_ring_png.c \
../Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.c \
../Core/App/lvglApplication/images/ui_img_watch_min_modern_png.c \
../Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.c 

OBJS += \
./Core/App/lvglApplication/images/ui_img_1117480529.o \
./Core/App/lvglApplication/images/ui_img_pastel_purple_png.o \
./Core/App/lvglApplication/images/ui_img_ring_png.o \
./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.o \
./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.o \
./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.o 

C_DEPS += \
./Core/App/lvglApplication/images/ui_img_1117480529.d \
./Core/App/lvglApplication/images/ui_img_pastel_purple_png.d \
./Core/App/lvglApplication/images/ui_img_ring_png.d \
./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.d \
./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.d \
./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/lvglApplication/images/%.o Core/App/lvglApplication/images/%.su Core/App/lvglApplication/images/%.cyclo: ../Core/App/lvglApplication/images/%.c Core/App/lvglApplication/images/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-lvglApplication-2f-images

clean-Core-2f-App-2f-lvglApplication-2f-images:
	-$(RM) ./Core/App/lvglApplication/images/ui_img_1117480529.cyclo ./Core/App/lvglApplication/images/ui_img_1117480529.d ./Core/App/lvglApplication/images/ui_img_1117480529.o ./Core/App/lvglApplication/images/ui_img_1117480529.su ./Core/App/lvglApplication/images/ui_img_pastel_purple_png.cyclo ./Core/App/lvglApplication/images/ui_img_pastel_purple_png.d ./Core/App/lvglApplication/images/ui_img_pastel_purple_png.o ./Core/App/lvglApplication/images/ui_img_pastel_purple_png.su ./Core/App/lvglApplication/images/ui_img_ring_png.cyclo ./Core/App/lvglApplication/images/ui_img_ring_png.d ./Core/App/lvglApplication/images/ui_img_ring_png.o ./Core/App/lvglApplication/images/ui_img_ring_png.su ./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.cyclo ./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.d ./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.o ./Core/App/lvglApplication/images/ui_img_watch_hour_modern_png.su ./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.cyclo ./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.d ./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.o ./Core/App/lvglApplication/images/ui_img_watch_min_modern_png.su ./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.cyclo ./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.d ./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.o ./Core/App/lvglApplication/images/ui_img_watch_sec_modern_png.su

.PHONY: clean-Core-2f-App-2f-lvglApplication-2f-images

