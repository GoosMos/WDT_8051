################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c 

RELS += \
./User/main.rel 

C_DEPS += \
./User/main.d 


# Each subdirectory must supply rules for building sources it contributes
User/main.rel: C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c User/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --debug --out-fmt-elf -D__SDCC__ -I"C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/SDCC/../../../../Library/Device/Include" -I"C:/Program Files (x86)/Nuvoton Tools/OpenOCD/bin/../../Toolchain/SDCC/include" -I"C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/SDCC/../../../../Library/StdDriver/inc" --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --debug --out-fmt-elf -MM -D__SDCC__ -I"C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/SDCC/../../../../Library/Device/Include" -I"C:/Program Files (x86)/Nuvoton Tools/OpenOCD/bin/../../Toolchain/SDCC/include" -I"C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/SDCC/../../../../Library/StdDriver/inc" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


