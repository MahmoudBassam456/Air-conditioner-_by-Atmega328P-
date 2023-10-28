#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Config_1.mk)" "nbproject/Makefile-local-Config_1.mk"
include nbproject/Makefile-local-Config_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Config_1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Ecal_layer/ecu_led/ecu_led.c Ecal_layer/ecu_push_button/ecu_push_button.c Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c Mcal_layer/Device_config/Atmega328p_device_config.c Application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o ${OBJECTDIR}/Application.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d ${OBJECTDIR}/Application.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o ${OBJECTDIR}/Application.o

# Source Files
SOURCEFILES=Ecal_layer/ecu_led/ecu_led.c Ecal_layer/ecu_push_button/ecu_push_button.c Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c Mcal_layer/Device_config/Atmega328p_device_config.c Application.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/atmega328"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Config_1.mk ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o: Ecal_layer/ecu_led/ecu_led.c  .generated_files/flags/Config_1/dd0565fae220987b8e56cdd52f66d9c80a034532 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_led" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o  -o ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o Ecal_layer/ecu_led/ecu_led.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o: Ecal_layer/ecu_push_button/ecu_push_button.c  .generated_files/flags/Config_1/87af9b1a2805d1f0f33d2352fc894e6e58e848fa .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_push_button" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o  -o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o Ecal_layer/ecu_push_button/ecu_push_button.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o: Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  .generated_files/flags/Config_1/3f2000a189e93433737ddfe34e8638e0c584f114 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o  -o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o: Mcal_layer/Device_config/Atmega328p_device_config.c  .generated_files/flags/Config_1/f769bebc2e2d199bdedb1355003bc1e0a069cd11 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Device_config" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o  -o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o Mcal_layer/Device_config/Atmega328p_device_config.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/Config_1/f3993a26f40a368960e7d63e9b397229ede669af .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o  -o ${OBJECTDIR}/Application.o Application.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o: Ecal_layer/ecu_led/ecu_led.c  .generated_files/flags/Config_1/d2a33812582f7ee5f135ed12a2bdd3c91c24d905 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_led" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o  -o ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o Ecal_layer/ecu_led/ecu_led.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o: Ecal_layer/ecu_push_button/ecu_push_button.c  .generated_files/flags/Config_1/76834ebd03e226511dffe059a0864d225c732552 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_push_button" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o  -o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o Ecal_layer/ecu_push_button/ecu_push_button.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o: Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  .generated_files/flags/Config_1/ab62f94b4c3ab2cb15838f005615e9c7f5b32a0 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o  -o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o: Mcal_layer/Device_config/Atmega328p_device_config.c  .generated_files/flags/Config_1/d5207237ba3ba921613104b3c260f46de10512b5 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Device_config" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o  -o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o Mcal_layer/Device_config/Atmega328p_device_config.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/Config_1/d787a967dd833b48a0fa1f73334b61ec7b994d88 .generated_files/flags/Config_1/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega328 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o  -o ${OBJECTDIR}/Application.o Application.c  -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega328 ${PACK_COMMON_OPTIONS}  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\Air_cond.${IMAGE_TYPE}.map"    -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega328 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\Air_cond.${IMAGE_TYPE}.map"    -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Config_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Air_cond.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Air_cond.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
