################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../startup/startup_mk64f12.c 

OBJS += \
./startup/startup_mk64f12.o 

C_DEPS += \
./startup/startup_mk64f12.d 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DFRDM_K64F -DFREEDOM -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\board" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\source" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\utilities" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\drivers" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\device" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\component\uart" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\component\lists" -I"C:\Users\Divine A Mathew\Documents\MCUXpressoIDE_11.4.1_6260\workspace\frdmk64f_led_blinky\CMSIS" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


