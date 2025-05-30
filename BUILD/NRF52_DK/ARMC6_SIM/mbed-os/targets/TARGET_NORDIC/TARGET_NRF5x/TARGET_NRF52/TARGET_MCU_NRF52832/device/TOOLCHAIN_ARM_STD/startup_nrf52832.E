# 1 "F:\\prj_soft\\mbed-studio\\20D_radio_simulator\\mbed-os\\targets\\TARGET_NORDIC\\TARGET_NRF5x\\TARGET_NRF52\\TARGET_MCU_NRF52832\\device\\TOOLCHAIN_ARM_STD\\startup_nrf52832.S"
# 1 "<built-in>" 1
# 410 "<built-in>"
# 1 "F:\\prj_soft\\mbed-studio\\20D_radio_simulator\\BUILD\\NRF52_DK\\ARMC6_SIM\\mbed_config.h" 1
# 411 "<built-in>" 2
# 1 "F:\\prj_soft\\mbed-studio\\20D_radio_simulator\\mbed-os\\targets\\TARGET_NORDIC\\TARGET_NRF5x\\TARGET_NRF52\\TARGET_MCU_NRF52832\\device\\TOOLCHAIN_ARM_STD\\startup_nrf52832.S" 2
;
# 28 "F:\\prj_soft\\mbed-studio\\20D_radio_simulator\\mbed-os\\targets\\TARGET_NORDIC\\TARGET_NRF5x\\TARGET_NRF52\\TARGET_MCU_NRF52832\\device\\TOOLCHAIN_ARM_STD\\startup_nrf52832.S"
                PRESERVE8
                THUMB

; Vector Table Mapped to Address 0 at Reset

                AREA RESET, DATA, READONLY
                EXPORT __Vectors
                EXPORT __Vectors_End
                EXPORT __Vectors_Size
                IMPORT |Image$$ARM_LIB_STACK$$ZI$$Limit|

__Vectors DCD |Image$$ARM_LIB_STACK$$ZI$$Limit| ; Top of Stack
                DCD Reset_Handler
                DCD NMI_Handler
                DCD HardFault_Handler
                DCD MemoryManagement_Handler
                DCD BusFault_Handler
                DCD UsageFault_Handler
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD SVC_Handler
                DCD DebugMonitor_Handler
                DCD 0 ; Reserved
                DCD PendSV_Handler
                DCD SysTick_Handler

                ; External Interrupts
                DCD POWER_CLOCK_IRQHandler
                DCD RADIO_IRQHandler
                DCD UARTE0_UART0_IRQHandler_v
                DCD SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler_v
                DCD SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler_v
                DCD NFCT_IRQHandler_v
                DCD GPIOTE_IRQHandler_v
                DCD SAADC_IRQHandler_v
                DCD TIMER0_IRQHandler_v
                DCD TIMER1_IRQHandler_v
                DCD TIMER2_IRQHandler_v
                DCD RTC0_IRQHandler
                DCD TEMP_IRQHandler_v
                DCD RNG_IRQHandler
                DCD ECB_IRQHandler
                DCD CCM_AAR_IRQHandler
                DCD WDT_IRQHandler_v
                DCD RTC1_IRQHandler_v
                DCD QDEC_IRQHandler_v
                DCD COMP_LPCOMP_IRQHandler_v
                DCD SWI0_EGU0_IRQHandler_v
                DCD SWI1_EGU1_IRQHandler_v
                DCD SWI2_EGU2_IRQHandler_v
                DCD SWI3_EGU3_IRQHandler_v
                DCD SWI4_EGU4_IRQHandler
                DCD SWI5_EGU5_IRQHandler
                DCD TIMER3_IRQHandler_v
                DCD TIMER4_IRQHandler_v
                DCD PWM0_IRQHandler_v
                DCD PDM_IRQHandler_v
                DCD 0 ; Reserved
                DCD 0 ; Reserved
                DCD MWU_IRQHandler
                DCD PWM1_IRQHandler_v
                DCD PWM2_IRQHandler_v
                DCD SPIM2_SPIS2_SPI2_IRQHandler_v
                DCD RTC2_IRQHandler_v
                DCD I2S_IRQHandler_v
                DCD FPU_IRQHandler_v

__Vectors_End

__Vectors_Size EQU __Vectors_End - __Vectors

                AREA |.text|, CODE, READONLY

; Reset Handler


Reset_Handler PROC
                EXPORT Reset_Handler [WEAK]
                IMPORT SystemInit
                IMPORT __main
                IMPORT nrf_reloc_vector_table


                LDR R0, =SystemInit
                BLX R0
                LDR R0, =nrf_reloc_vector_table
                BLX R0
                LDR R0, =__main
                BX R0
                ENDP

; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler PROC
                EXPORT NMI_Handler [WEAK]
                B .
                ENDP
HardFault_Handler PROC

                EXPORT HardFault_Handler [WEAK]
                B .
                ENDP
MemoryManagement_Handler PROC

                EXPORT MemoryManagement_Handler [WEAK]
                B .
                ENDP
BusFault_Handler PROC

                EXPORT BusFault_Handler [WEAK]
                B .
                ENDP
UsageFault_Handler PROC

                EXPORT UsageFault_Handler [WEAK]
                B .
                ENDP
SVC_Handler PROC
                EXPORT SVC_Handler [WEAK]
                B .
                ENDP
DebugMonitor_Handler PROC

                EXPORT DebugMonitor_Handler [WEAK]
                B .
                ENDP
PendSV_Handler PROC
                EXPORT PendSV_Handler [WEAK]
                B .
                ENDP
SysTick_Handler PROC
                EXPORT SysTick_Handler [WEAK]
                B .
                ENDP

Default_Handler PROC

                EXPORT POWER_CLOCK_IRQHandler [WEAK]
                EXPORT RADIO_IRQHandler [WEAK]
                EXPORT UARTE0_UART0_IRQHandler_v [WEAK]
                EXPORT SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler_v [WEAK]
                EXPORT SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler_v [WEAK]
                EXPORT NFCT_IRQHandler_v [WEAK]
                EXPORT GPIOTE_IRQHandler_v [WEAK]
                EXPORT SAADC_IRQHandler_v [WEAK]
                EXPORT TIMER0_IRQHandler_v [WEAK]
                EXPORT TIMER1_IRQHandler_v [WEAK]
                EXPORT TIMER2_IRQHandler_v [WEAK]
                EXPORT RTC0_IRQHandler [WEAK]
                EXPORT TEMP_IRQHandler_v [WEAK]
                EXPORT RNG_IRQHandler [WEAK]
                EXPORT ECB_IRQHandler [WEAK]
                EXPORT CCM_AAR_IRQHandler [WEAK]
                EXPORT WDT_IRQHandler_v [WEAK]
                EXPORT RTC1_IRQHandler_v [WEAK]
                EXPORT QDEC_IRQHandler_v [WEAK]
                EXPORT COMP_LPCOMP_IRQHandler_v [WEAK]
                EXPORT SWI0_EGU0_IRQHandler_v [WEAK]
                EXPORT SWI1_EGU1_IRQHandler_v [WEAK]
                EXPORT SWI2_EGU2_IRQHandler_v [WEAK]
                EXPORT SWI3_EGU3_IRQHandler_v [WEAK]
                EXPORT SWI4_EGU4_IRQHandler [WEAK]
                EXPORT SWI5_EGU5_IRQHandler [WEAK]
                EXPORT TIMER3_IRQHandler_v [WEAK]
                EXPORT TIMER4_IRQHandler_v [WEAK]
                EXPORT PWM0_IRQHandler_v [WEAK]
                EXPORT PDM_IRQHandler_v [WEAK]
                EXPORT MWU_IRQHandler [WEAK]
                EXPORT PWM1_IRQHandler_v [WEAK]
                EXPORT PWM2_IRQHandler_v [WEAK]
                EXPORT SPIM2_SPIS2_SPI2_IRQHandler_v [WEAK]
                EXPORT RTC2_IRQHandler_v [WEAK]
                EXPORT I2S_IRQHandler_v [WEAK]
                EXPORT FPU_IRQHandler_v [WEAK]
POWER_CLOCK_IRQHandler
RADIO_IRQHandler
UARTE0_UART0_IRQHandler_v
SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler_v
SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler_v
NFCT_IRQHandler_v
GPIOTE_IRQHandler_v
SAADC_IRQHandler_v
TIMER0_IRQHandler_v
TIMER1_IRQHandler_v
TIMER2_IRQHandler_v
RTC0_IRQHandler
TEMP_IRQHandler_v
RNG_IRQHandler
ECB_IRQHandler
CCM_AAR_IRQHandler
WDT_IRQHandler_v
RTC1_IRQHandler_v
QDEC_IRQHandler_v
COMP_LPCOMP_IRQHandler_v
SWI0_EGU0_IRQHandler_v
SWI1_EGU1_IRQHandler_v
SWI2_EGU2_IRQHandler_v
SWI3_EGU3_IRQHandler_v
SWI4_EGU4_IRQHandler
SWI5_EGU5_IRQHandler
TIMER3_IRQHandler_v
TIMER4_IRQHandler_v
PWM0_IRQHandler_v
PDM_IRQHandler_v
MWU_IRQHandler
PWM1_IRQHandler_v
PWM2_IRQHandler_v
SPIM2_SPIS2_SPI2_IRQHandler_v
RTC2_IRQHandler_v
I2S_IRQHandler_v
FPU_IRQHandler_v
                B .
                ENDP
                ALIGN
                END
