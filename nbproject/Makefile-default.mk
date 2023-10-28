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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
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
COMPARISON_BUILD=-mafrlcsj
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328P
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o: Ecal_layer/ecu_led/ecu_led.c  .generated_files/flags/default/ed4d0543b5120fcab72111a54388133ce755c61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_led" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o -o ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o Ecal_layer/ecu_led/ecu_led.c 
	
${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o: Ecal_layer/ecu_push_button/ecu_push_button.c  .generated_files/flags/default/ef5cec3c492a5b89956dfeff4af653b2a4efe762 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_push_button" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o -o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o Ecal_layer/ecu_push_button/ecu_push_button.c 
	
${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o: Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  .generated_files/flags/default/8d69d868f421b141f13aaaa837bafe0b869209df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o -o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c 
	
${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o: Mcal_layer/Device_config/Atmega328p_device_config.c  .generated_files/flags/default/27d55fa4b186b5ced2c50ec14ced6c52ac218a5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Device_config" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o -o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o Mcal_layer/Device_config/Atmega328p_device_config.c 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/default/5651542fe7a286d74373ab8780d300c261db0bf9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o -o ${OBJECTDIR}/Application.o Application.c 
	
else
${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o: Ecal_layer/ecu_led/ecu_led.c  .generated_files/flags/default/e5af0edcc249b3d5027f6174a73f1708675e52fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_led" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o -o ${OBJECTDIR}/Ecal_layer/ecu_led/ecu_led.o Ecal_layer/ecu_led/ecu_led.c 
	
${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o: Ecal_layer/ecu_push_button/ecu_push_button.c  .generated_files/flags/default/9052f604ab8db702c20dd9e1dbb3148a91a0c983 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Ecal_layer/ecu_push_button" 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d 
	@${RM} ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT "${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o.d" -MT ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o -o ${OBJECTDIR}/Ecal_layer/ecu_push_button/ecu_push_button.o Ecal_layer/ecu_push_button/ecu_push_button.c 
	
${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o: Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c  .generated_files/flags/default/7a7e243a43e9a3ae0762dd92bcb8ceb50036033d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT "${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o.d" -MT ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o -o ${OBJECTDIR}/Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.o Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.c 
	
${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o: Mcal_layer/Device_config/Atmega328p_device_config.c  .generated_files/flags/default/a9e82f91cdbb6000700e4c35ebd097bf54f4b3f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Mcal_layer/Device_config" 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d 
	@${RM} ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT "${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o.d" -MT ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o -o ${OBJECTDIR}/Mcal_layer/Device_config/Atmega328p_device_config.o Mcal_layer/Device_config/Atmega328p_device_config.c 
	
${OBJECTDIR}/Application.o: Application.c  .generated_files/flags/default/ce312eed5d787a619067615a790ed827da2d79e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Application.o.d 
	@${RM} ${OBJECTDIR}/Application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/Application.o.d" -MT "${OBJECTDIR}/Application.o.d" -MT ${OBJECTDIR}/Application.o -o ${OBJECTDIR}/Application.o Application.c 
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Air_cond.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/Air_cond.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/Air_cond.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Air_cond.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Air_cond.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
