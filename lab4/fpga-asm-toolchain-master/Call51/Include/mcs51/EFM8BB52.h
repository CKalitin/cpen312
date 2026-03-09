// -----------------------------------------------------------------------------
// EFM8BB52.h: Register definitions for Silabs EFM8BB52 devices.
//
// Copyright (C) 2023 - Jesus Calvino-Fraga jesuscf@gmail.com
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// -----------------------------------------------------------------------------

#ifndef REG_EFM8BB52_H
#define REG_EFM8BB52_H

//------------------------------------------------------------------------------
// Interrupt Definitions
//------------------------------------------------------------------------------
#define INTERRUPT_INT0     0  // External Interrupt 0      
#define INTERRUPT_TIMER0   1  // Timer 0 Overflow          
#define INTERRUPT_INT1     2  // External Interrupt 1      
#define INTERRUPT_TIMER1   3  // Timer 1 Overflow          
#define INTERRUPT_UART0    4  // UART0                     
#define INTERRUPT_TIMER2   5  // Timer 2 Overflow / Capture
#define INTERRUPT_SPI0     6  // SPI0                      
#define INTERRUPT_SMBUS0   7  // SMBus 0                   
#define INTERRUPT_PMATCH   8  // Port Match                
#define INTERRUPT_ADC0WC   9  // ADC0 Window Compare       
#define INTERRUPT_ADC0EOC  10 // ADC0 End of Conversion    
#define INTERRUPT_PCA0     11 // PCA0                      
#define INTERRUPT_CMP0     12 // Comparator 0              
#define INTERRUPT_CMP1     13 // Comparator 1              
#define INTERRUPT_TIMER3   14 // Timer 3 Overflow / Capture
#define INTERRUPT_UART1    15 // UART1                     
#define INTERRUPT_I2C0     16 // I2C0 Slave                
#define INTERRUPT_TIMER4   17 // Timer 4 Overflow / Capture
#define INTERRUPT_TIMER5   18 // Timer 5 Overflow / Capture
#define INTERRUPT_CL0      19 // Configurable Logic        
#define INTERRUPT_PWM      20 // Pulse Width Modulation       

//------------------------------------------------------------------------------
// SFR Page Definitions
//------------------------------------------------------------------------------
#define LEGACY_PAGE  EQU 0x00 // Legacy SFR Page
#define PG2_PAGE     EQU 0x10 // Page2          
#define PG3_PAGE     EQU 0x20 // Page3          
#define PG4_PAGE     EQU 0x30 // Page4          

// From reference manual: Table 12.1. ADC0 Input Multiplexer Channels
#define QFN32_MUX_P0_2    0b_00000 // ADC0.0 ADC0P0 P0.2
#define QFN32_MUX_P0_3    0b_00001 // ADC0.1 ADC0P1 P0.3
#define QFN32_MUX_P0_4    0b_00010 // ADC0.2 ADC0P2 P0.4
#define QFN32_MUX_P0_5    0b_00011 // ADC0.3 ADC0P3 P0.5
#define QFN32_MUX_P1_0    0b_00100 // ADC0.4 ADC0P4 P1.0
#define QFN32_MUX_P1_2    0b_00101 // ADC0.5 ADC0P5 P1.2
#define QFN32_MUX_P1_3    0b_00110 // ADC0.6 ADC0P6 P1.3
#define QFN32_MUX_P1_5    0b_00111 // ADC0.7 ADC0P7 P1.5
#define QFN32_MUX_P1_6    0b_01000 // ADC0.8 ADC0P8 P1.6
#define QFN32_MUX_P1_7    0b_01001 // ADC0.9 ADC0P9 P1.7
#define QFN32_MUX_P2_0    0b_01010 // ADC0.10 ADC0P10 P2.0
#define QFN32_MUX_P2_2    0b_01011 // ADC0.11 ADC0P11 P2.2
#define QFN32_MUX_P2_3    0b_01100 // ADC0.12 ADC0P12 P2.3
#define QFN32_MUX_P2_4    0b_01101 // ADC0.13 ADC0P13 P2.4
#define QFN32_MUX_P2_5    0b_01110 // ADC0.14 ADC0P14 P2.5
#define QFN32_MUX_P3_0    0b_01111 // ADC0.15 ADC0P15 P3.0
#define QFN32_MUX_TEMP    0b_10000 // ADC0.16 ADC0P16 TEMP Internal Temperature Sensor
#define QFN32_MVDD_DIV    0b_10001 // ADC0.17 ADC0P17 VDD voltage divider

#define TSSOP28_MUX_P0_2    0b_00000 // ADC0.0 ADC0P0 P0.2
#define TSSOP28_MUX_P0_3    0b_00001 // ADC0.1 ADC0P1 P0.3
#define TSSOP28_MUX_P0_4    0b_00010 // ADC0.2 ADC0P2 P0.4
#define TSSOP28_MUX_P0_5    0b_00011 // ADC0.3 ADC0P3 P0.5
#define TSSOP28_MUX_P1_0    0b_00100 // ADC0.4 ADC0P4 P1.0
#define TSSOP28_MUX_P1_2    0b_00101 // ADC0.5 ADC0P5 P1.2
#define TSSOP28_MUX_P1_3    0b_00110 // ADC0.6 ADC0P6 P1.3
#define TSSOP28_MUX_P1_4    0b_00111 // ADC0.7 ADC0P7 P1.4
#define TSSOP28_MUX_P1_5    0b_01000 // ADC0.8 ADC0P8 P1.5
#define TSSOP28_MUX_P1_6    0b_01001 // ADC0.9 ADC0P9 P1.6
#define TSSOP28_MUX_P2_0    0b_01010 // ADC0.10 ADC0P10 P2.0
#define TSSOP28_MUX_P2_1    0b_01011 // ADC0.11 ADC0P11 P2.1
#define TSSOP28_MUX_P2_2    0b_01100 // ADC0.12 ADC0P12 P2.2
#define TSSOP28_MUX_P2_3    0b_01101 // ADC0.13 ADC0P13 P2.3
#define TSSOP28_MUX_P2_5    0b_01110 // ADC0.14 ADC0P14 P2.5
#define TSSOP28_MUX_TEMP    0b_10000 // ADC0.16 ADC0P16 TEMP Internal Temperature Sensor
#define TSSOP28_MVDD_DIV    0b_10001 // ADC0.17 ADC0P17 VDD voltage divider

#define TSSOP20_MUX_P0_2    0b_00000 // ADC0.0 ADC0P0 P0.2
#define TSSOP20_MUX_P0_3    0b_00001 // ADC0.1 ADC0P1 P0.3
#define TSSOP20_MUX_P0_4    0b_00010 // ADC0.2 ADC0P2 P0.4
#define TSSOP20_MUX_P0_5    0b_00011 // ADC0.3 ADC0P3 P0.5
#define TSSOP20_MUX_P0_7    0b_00100 // ADC0.4 ADC0P4 P0.7
#define TSSOP20_MUX_P1_0    0b_00101 // ADC0.5 ADC0P5 P1.0
#define TSSOP20_MUX_P1_1    0b_00110 // ADC0.6 ADC0P6 P1.1
#define TSSOP20_MUX_P1_2    0b_00111 // ADC0.7 ADC0P7 P1.2
#define TSSOP20_MUX_P1_3    0b_01000 // ADC0.8 ADC0P8 P1.3
#define TSSOP20_MUX_P1_4    0b_01001 // ADC0.9 ADC0P9 P1.4
#define TSSOP20_MUX_P1_5    0b_01010 // ADC0.10 ADC0P10 P1.5
#define TSSOP20_MUX_P1_6    0b_01011 // ADC0.11 ADC0P11 P1.6
#define TSSOP20_MUX_TEMP    0b_10000 // ADC0.16 ADC0P16 TEMP Internal Temperature Sensor
#define TSSOP20_MVDD_DIV    0b_10001 // ADC0.17 ADC0P17 VDD voltage divider

//------------------------------------------------------------------------------
// SFR Definitions
//------------------------------------------------------------------------------
__sfr __at (0xE0) ACC      ; // SFRPAGE: ALL Accumulator
__sfr __at (0xB6) ADC0ASAH ; // SFRPAGE: 0x30 ADC0 Autoscan Start Address High Byte
__sfr __at (0xB5) ADC0ASAL ; // SFRPAGE: 0x30 ADC0 Autoscan Start Address Low Byte
__sfr __at (0xA1) ADC0ASCF ; // SFRPAGE: 0x30 ADC0 Autoscan Configuration
__sfr __at (0xC7) ADC0ASCT ; // SFRPAGE: 0x30 ADC0 Autoscan Output Count
__sfr __at (0xB9) ADC0CF1  ; // SFRPAGE: 0x00, 0x30 ADC0 Configuration
__sfr __at (0xDF) ADC0CF2  ; // SFRPAGE: 0x00, 0x30 ADC0 Power Control
__sfr __at (0xE8) ADC0CN0  ; // SFRPAGE: 0x00, 0x30 ADC0 Control 0
__sfr __at (0xB2) ADC0CN1  ; // SFRPAGE: 0x00, 0x30 ADC0 Control 1
__sfr __at (0xB3) ADC0CN2  ; // SFRPAGE: 0x00, 0x30 ADC0 Control 2
__sfr __at (0xC4) ADC0GTH  ; // SFRPAGE: 0x00, 0x30 ADC0 Greater-Than High Byte
__sfr __at (0xC3) ADC0GTL  ; // SFRPAGE: 0x00, 0x30 ADC0 Greater-Than Low Byte
__sfr __at (0xBE) ADC0H    ; // SFRPAGE: 0x00, 0x30 ADC0 Data Word High Byte
__sfr __at (0xBD) ADC0L    ; // SFRPAGE: 0x00, 0x30 ADC0 Data Word Low Byte
__sfr __at (0xC6) ADC0LTH  ; // SFRPAGE: 0x00, 0x30 ADC0 Less-Than High Byte
__sfr __at (0xC5) ADC0LTL  ; // SFRPAGE: 0x00, 0x30 ADC0 Less-Than Low Byte
__sfr __at (0xBB) ADC0MX   ; // SFRPAGE: 0x00, 0x30 ADC0 Multiplexer Selection
__sfr __at (0xF0) B        ; // SFRPAGE: ALL B Register
__sfr __at (0x8E) CKCON0   ; // SFRPAGE: 0x00, 0x10 Clock Control 0
__sfr __at (0xA6) CKCON1   ; // SFRPAGE: 0x10 Clock Control 1
__sfr __at (0xC6) CLEN0    ; // SFRPAGE: 0x20 Configurable Logic Enable 0
__sfr __at (0xC7) CLIE0    ; // SFRPAGE: 0x20 Configurable Logic Interrupt Enable 0
__sfr __at (0xE8) CLIF0    ; // SFRPAGE: 0x20 Configurable Logic Interrupt Flag 0
__sfr __at (0xAF) CLKGRP0  ; // SFRPAGE: 0x00, 0x10, 0x30 Clock Group Control
__sfr __at (0xA9) CLKSEL   ; // SFRPAGE: ALL Clock Select
__sfr __at (0xD1) CLOUT0   ; // SFRPAGE: 0x20 Configurable Logic Output 0
__sfr __at (0xB1) CLU0CF   ; // SFRPAGE: 0x20 Configurable Logic Unit 0 Configuration
__sfr __at (0xAF) CLU0FN   ; // SFRPAGE: 0x20 Configurable Logic Unit 0 Function Select
__sfr __at (0x84) CLU0MX   ; // SFRPAGE: 0x20 Configurable Logic Unit 0 Multiplexer
__sfr __at (0xB3) CLU1CF   ; // SFRPAGE: 0x20 Configurable Logic Unit 1 Configuration
__sfr __at (0xB2) CLU1FN   ; // SFRPAGE: 0x20 Configurable Logic Unit 1 Function Select
__sfr __at (0x85) CLU1MX   ; // SFRPAGE: 0x20 Configurable Logic Unit 1 Multiplexer
__sfr __at (0xB6) CLU2CF   ; // SFRPAGE: 0x20 Configurable Logic Unit 2 Configuration
__sfr __at (0xB5) CLU2FN   ; // SFRPAGE: 0x20 Configurable Logic Unit 2 Function Select
__sfr __at (0x91) CLU2MX   ; // SFRPAGE: 0x20 Configurable Logic Unit 2 Multiplexer
__sfr __at (0xBF) CLU3CF   ; // SFRPAGE: 0x20 Configurable Logic Unit 3 Configuration
__sfr __at (0xBE) CLU3FN   ; // SFRPAGE: 0x20 Configurable Logic Unit 3 Function Select
__sfr __at (0xAE) CLU3MX   ; // SFRPAGE: 0x20 Configurable Logic Unit 3 Multiplexer
__sfr __at (0x9B) CMP0CN0  ; // SFRPAGE: 0x00, 0x30 Comparator 0 Control 0
__sfr __at (0x99) CMP0CN1  ; // SFRPAGE: 0x30 Comparator 0 Control 1
__sfr __at (0x9D) CMP0MD   ; // SFRPAGE: 0x00, 0x30 Comparator 0 Mode
__sfr __at (0x9F) CMP0MX   ; // SFRPAGE: 0x00, 0x30 Comparator 0 Multiplexer Selection
__sfr __at (0xBF) CMP1CN0  ; // SFRPAGE: 0x00, 0x30 Comparator 1 Control 0
__sfr __at (0xAC) CMP1CN1  ; // SFRPAGE: 0x30 Comparator 1 Control 1
__sfr __at (0xAB) CMP1MD   ; // SFRPAGE: 0x00, 0x30 Comparator 1 Mode
__sfr __at (0xAA) CMP1MX   ; // SFRPAGE: 0x00, 0x30 Comparator 1 Multiplexer Selection
__sfr __at (0xA4) CP0CN    ; // SFRPAGE: 0x30 Charge Pump Configuration
__sfr __at (0xCE) CRC0CN0  ; // SFRPAGE: 0x20 CRC0 Control 0
__sfr __at (0x86) CRC0CN1  ; // SFRPAGE: 0x20 CRC0 Control 1
__sfr __at (0xD3) CRC0CNT  ; // SFRPAGE: 0x20 CRC0 Automatic Flash Sector Count
__sfr __at (0xCB) CRC0DAT  ; // SFRPAGE: 0x20 CRC0 Data Output
__sfr __at (0xCF) CRC0FLIP ; // SFRPAGE: 0x20 CRC0 Bit Flip
__sfr __at (0xCA) CRC0IN   ; // SFRPAGE: 0x20 CRC0 Data Input
__sfr __at (0xD2) CRC0ST   ; // SFRPAGE: 0x20 CRC0 Automatic Flash Sector Start
__sfr __at (0x8A) DAC0ALT  ; // SFRPAGE: 0x30 Alternate Mode Low Byte
__sfr __at (0x91) DAC0CF0  ; // SFRPAGE: 0x30 DAC0 Configuration 0
__sfr __at (0x92) DAC0CF1  ; // SFRPAGE: 0x30 DAC0 Configuration 1
__sfr __at (0x85) DAC0H    ; // SFRPAGE: 0x30 DAC0 Data Word High Byte
__sfr __at (0x84) DAC0L    ; // SFRPAGE: 0x30 DAC0 Data Word Low Byte
__sfr __at (0xAD) DERIVID  ; // SFRPAGE: 0x00 Derivative Identification
__sfr __at (0xB5) DEVICEID ; // SFRPAGE: 0x00 Device Identification
__sfr __at (0x83) DPH      ; // SFRPAGE: ALL Data Pointer High
__sfr __at (0x82) DPL      ; // SFRPAGE: ALL Data Pointer Low
__sfr __at (0xE6) EIE1     ; // SFRPAGE: 0x00, 0x10 Extended Interrupt Enable 1
__sfr __at (0xF3) EIE2     ; // SFRPAGE: 0x00, 0x10 Extended Interrupt Enable 2
__sfr __at (0xBB) EIP1     ; // SFRPAGE: 0x10 Extended Interrupt Priority 1 Low
__sfr __at (0xEE) EIP1H    ; // SFRPAGE: 0x10 Extended Interrupt Priority 1 High
__sfr __at (0xED) EIP2     ; // SFRPAGE: 0x10 Extended Interrupt Priority 2
__sfr __at (0xF6) EIP2H    ; // SFRPAGE: 0x10 Extended Interrupt Priority 2 High
__sfr __at (0xE7) EMI0CN   ; // SFRPAGE: ALL External Memory Interface Control
__sfr __at (0xB7) FLKEY    ; // SFRPAGE: ALL Flash Lock and Key
__sfr __at (0xD6) HFO0CAL  ; // SFRPAGE: 0x10 High Frequency Oscillator 0 Calibration
__sfr __at (0xEF) HFO0CN   ; // SFRPAGE: 0x10 High Frequency Oscillator Control
__sfr __at (0xCC) HFO0TRIM0; // SFRPAGE: 0x10 High Frequency Oscillator Trim
__sfr __at (0xA8) IE       ; // SFRPAGE: ALL Interrupt Enable
__sfr __at (0xB8) IP       ; // SFRPAGE: ALL Interrupt Priority
__sfr __at (0xF2) IPH      ; // SFRPAGE: 0x10 Interrupt Priority High
__sfr __at (0xE4) IT01CF   ; // SFRPAGE: 0x00, 0x10 INT0/INT1 Configuration
__sfr __at (0xB1) LFO0CN   ; // SFRPAGE: 0x00, 0x10 Low Frequency Oscillator Control
__sfr __at (0x80) P0       ; // SFRPAGE: ALL Port 0 Pin Latch
__sfr __at (0xFE) P0MASK   ; // SFRPAGE: 0x00, 0x20 Port 0 Mask
__sfr __at (0xFD) P0MAT    ; // SFRPAGE: 0x00, 0x20 Port 0 Match
__sfr __at (0xF1) P0MDIN   ; // SFRPAGE: 0x00, 0x20 Port 0 Input Mode
__sfr __at (0xA4) P0MDOUT  ; // SFRPAGE: 0x00, 0x20 Port 0 Output Mode
__sfr __at (0xD4) P0SKIP   ; // SFRPAGE: 0x00, 0x20 Port 0 Skip
__sfr __at (0x90) P1       ; // SFRPAGE: ALL Port 1 Pin Latch
__sfr __at (0xEE) P1MASK   ; // SFRPAGE: 0x00, 0x20 Port 1 Mask
__sfr __at (0xED) P1MAT    ; // SFRPAGE: 0x00, 0x20 Port 1 Match
__sfr __at (0xF2) P1MDIN   ; // SFRPAGE: 0x00, 0x20 Port 1 Input Mode
__sfr __at (0xA5) P1MDOUT  ; // SFRPAGE: 0x00, 0x20 Port 1 Output Mode
__sfr __at (0xD5) P1SKIP   ; // SFRPAGE: 0x00, 0x20 Port 1 Skip
__sfr __at (0xA0) P2       ; // SFRPAGE: ALL Port 2 Pin Latch
__sfr __at (0xFC) P2MASK   ; // SFRPAGE: 0x20 Port 2 Mask
__sfr __at (0xFB) P2MAT    ; // SFRPAGE: 0x20 Port 2 Match
__sfr __at (0xF3) P2MDIN   ; // SFRPAGE: 0x20 Port 2 Input Mode
__sfr __at (0xA6) P2MDOUT  ; // SFRPAGE: 0x00, 0x20 Port 2 Output Mode
__sfr __at (0xCC) P2SKIP   ; // SFRPAGE: 0x20 Port 2 Skip
__sfr __at (0xB0) P3       ; // SFRPAGE: ALL Port Pin Latch
__sfr __at (0xF4) P3MDIN   ; // SFRPAGE: 0x20 Port 3 Input Mode
__sfr __at (0x9C) P3MDOUT  ; // SFRPAGE: 0x20 Port 3 Output Mode
__sfr __at (0x9E) PCA0CENT ; // SFRPAGE: 0x00, 0x10 PCA Center Alignment Enable
__sfr __at (0x9C) PCA0CLR  ; // SFRPAGE: 0x00, 0x10 PCA Comparator Clear Control
__sfr __at (0xD8) PCA0CN0  ; // SFRPAGE: 0x00, 0x10 PCA Control
__sfr __at (0xFC) PCA0CPH0 ; // SFRPAGE: 0x00, 0x10 PCA Channel 0 Capture Module High Byte
__sfr __at (0xEA) PCA0CPH1 ; // SFRPAGE: 0x00, 0x10 PCA Channel 1 Capture Module High Byte
__sfr __at (0xEC) PCA0CPH2 ; // SFRPAGE: 0x00, 0x10 PCA Channel 2 Capture Module High Byte
__sfr __at (0xFB) PCA0CPL0 ; // SFRPAGE: 0x00, 0x10 PCA Channel 0 Capture Module Low Byte
__sfr __at (0xE9) PCA0CPL1 ; // SFRPAGE: 0x00, 0x10 PCA Channel 1 Capture Module Low Byte
__sfr __at (0xEB) PCA0CPL2 ; // SFRPAGE: 0x00, 0x10 PCA Channel 2 Capture Module Low Byte
__sfr __at (0xDA) PCA0CPM0 ; // SFRPAGE: 0x00, 0x10 PCA Channel 0 Capture/Compare Mode
__sfr __at (0xDB) PCA0CPM1 ; // SFRPAGE: 0x00, 0x10 PCA Channel 1 Capture/Compare Mode
__sfr __at (0xDC) PCA0CPM2 ; // SFRPAGE: 0x00, 0x10 PCA Channel 2 Capture/Compare Mode
__sfr __at (0xFA) PCA0H    ; // SFRPAGE: 0x00, 0x10 PCA Counter/Timer High Byte
__sfr __at (0xF9) PCA0L    ; // SFRPAGE: 0x00, 0x10 PCA Counter/Timer Low Byte
__sfr __at (0xD9) PCA0MD   ; // SFRPAGE: 0x00, 0x10 PCA Mode
__sfr __at (0x96) PCA0POL  ; // SFRPAGE: 0x00, 0x10 PCA Output Polarity
__sfr __at (0xF7) PCA0PWM  ; // SFRPAGE: 0x00, 0x10 PCA PWM Configuration
__sfr __at (0x87) PCON0    ; // SFRPAGE: ALL Power Control 0
__sfr __at (0xCD) PCON1    ; // SFRPAGE: ALL Power Control 1
__sfr __at (0xC1) PFE0CN   ; // SFRPAGE: 0x10 Prefetch Engine Control
__sfr __at (0xF6) PRTDRV   ; // SFRPAGE: 0x00, 0x20 Port Drive Strength
__sfr __at (0x8F) PSCTL    ; // SFRPAGE: ALL Program Store Control
__sfr __at (0xAA) PSTAT0   ; // SFRPAGE: 0x10 PMU Status 0
__sfr __at (0xD0) PSW      ; // SFRPAGE: ALL Program Status Word
__sfr __at (0xC2) PWMCFG0  ; // SFRPAGE: 0x10 PWM Configuration 0
__sfr __at (0xC9) PWMCFG1  ; // SFRPAGE: 0x10 PWM Configuration 1
__sfr __at (0xD1) PWMCFG2  ; // SFRPAGE: 0x10 PWM Configuration 2
__sfr __at (0xDF) PWMCFG3  ; // SFRPAGE: 0x10 PWM Configuration 3
__sfr __at (0xE3) PWMCKDIV ; // SFRPAGE: 0x10 PWM Clock Divider
__sfr __at (0x9A) PWMCPH0  ; // SFRPAGE: 0x10 Ch0 Compare Value MSB
__sfr __at (0xB6) PWMCPH1  ; // SFRPAGE: 0x10 Ch1 Compare Value MSB
__sfr __at (0xBE) PWMCPH2  ; // SFRPAGE: 0x10 Ch2 Compare Value MSB
__sfr __at (0x99) PWMCPL0  ; // SFRPAGE: 0x10 Ch0 Compare Value LSB
__sfr __at (0xB5) PWMCPL1  ; // SFRPAGE: 0x10 Ch1 Compare Value LSB
__sfr __at (0xBD) PWMCPL2  ; // SFRPAGE: 0x10 Ch2 Compare Value LSB
__sfr __at (0xAC) PWMCPUDH0  ; // SFRPAGE: 0x10 Ch0 Compare Value Update MSB
__sfr __at (0xB3) PWMCPUDH1  ; // SFRPAGE: 0x10 Ch1 Compare Value Update MSB
__sfr __at (0xBA) PWMCPUDH2  ; // SFRPAGE: 0x10 Ch2 Compare Value Update MSB
__sfr __at (0xAB) PWMCPUDL0  ; // SFRPAGE: 0x10 Ch0 Compare Value Update LSB
__sfr __at (0xB2) PWMCPUDL1  ; // SFRPAGE: 0x10 Ch1 Compare Value Update LSB
__sfr __at (0xB9) PWMCPUDL2  ; // SFRPAGE: 0x10 Ch2 Compare Value Update LSB
__sfr __at (0xE2) PWMDTINLIM ; // SFRPAGE: 0x10 DTI Negative Limit
__sfr __at (0xE1) PWMDTIPLIM ; // SFRPAGE: 0x10 DTI Positive Limit
__sfr __at (0xC4) PWMH     ; // SFRPAGE: 0x10 PWM Counter MSB
__sfr __at (0x9F) PWMIE    ; // SFRPAGE: 0x10 PWM Interrupt Enable
__sfr __at (0x9D) PWMIF    ; // SFRPAGE: 0x10 PWM Interrupt Flags
__sfr __at (0xC3) PWML     ; // SFRPAGE: 0x10 PWM Counter LSB
__sfr __at (0xC6) PWMLIMH  ; // SFRPAGE: 0x10 PWM Counter Limit MSB
__sfr __at (0xC5) PWMLIML  ; // SFRPAGE: 0x10 PWM Counter Limit LSB
__sfr __at (0x9B) PWMSTATUS  ; // SFRPAGE: 0x10 PWM Status
__sfr __at (0xD1) REF0CN   ; // SFRPAGE: 0x00, 0x30 Voltage Reference Control
__sfr __at (0xC9) REG0CN   ; // SFRPAGE: 0x00, 0x20 Regulator 0 Control
__sfr __at (0xB6) REVID    ; // SFRPAGE: 0x00 Revision Identifcation
__sfr __at (0xEF) RSTSRC   ; // SFRPAGE: 0x00 Reset Source
__sfr __at (0x94) SBCON1   ; // SFRPAGE: 0x20 UART1 Baud Rate Generator Control
__sfr __at (0x96) SBRLH1   ; // SFRPAGE: 0x20 UART1 Baud Rate Generator High Byte
__sfr __at (0x95) SBRLL1   ; // SFRPAGE: 0x20 UART1 Baud Rate Generator Low Byte
__sfr __at (0x99) SBUF0    ; // SFRPAGE: 0x00, 0x20 UART0 Serial Port Data Buffer
__sfr __at (0x92) SBUF1    ; // SFRPAGE: 0x20 UART1 Serial Port Data Buffer
__sfr __at (0x98) SCON0    ; // SFRPAGE: 0x00, 0x20 UART0 Serial Port Control
__sfr __at (0xC8) SCON1    ; // SFRPAGE: 0x20 UART1 Serial Port Control
__sfr __at (0xA7) SFRPAGE  ; // SFRPAGE: ALL SFR Page
__sfr __at (0xBC) SFRPGCN  ; // SFRPAGE: 0x10 SFR Page Control
__sfr __at (0xD7) SFRSTACK ; // SFRPAGE: 0x10 SFR Page Stack
__sfr __at (0xD6) SMB0ADM  ; // SFRPAGE: 0x00, 0x20 SMBus 0 Slave Address Mask
__sfr __at (0xD7) SMB0ADR  ; // SFRPAGE: 0x00, 0x20 SMBus 0 Slave Address
__sfr __at (0xC1) SMB0CF   ; // SFRPAGE: 0x00, 0x20 SMBus 0 Configuration
__sfr __at (0xC0) SMB0CN0  ; // SFRPAGE: 0x00, 0x20 SMBus 0 Control
__sfr __at (0xC2) SMB0DAT  ; // SFRPAGE: 0x00, 0x20 SMBus 0 Data
__sfr __at (0xC3) SMB0FCN0 ; // SFRPAGE: 0x20 SMBus 0 FIFO Control 0
__sfr __at (0xC4) SMB0FCN1 ; // SFRPAGE: 0x20 SMBus 0 FIFO Control 1
__sfr __at (0xEF) SMB0FCT  ; // SFRPAGE: 0x20 SMBus 0 FIFO Count
__sfr __at (0xC5) SMB0RXLN ; // SFRPAGE: 0x20 SMBus 0 Receive Length Counter
__sfr __at (0xAC) SMB0TC   ; // SFRPAGE: 0x00, 0x20 SMBus 0 Timing and Pin Control
__sfr __at (0xFF) SMB1ADM  ; // SFRPAGE: 0x20 SMBus 1 Slave Address Mask
__sfr __at (0xBD) SMB1ADR  ; // SFRPAGE: 0x20 SMBus 1 Slave Address
__sfr __at (0xBA) SMB1CF   ; // SFRPAGE: 0x20 SMBus 1 Configuration
__sfr __at (0x88) SMB1CN0  ; // SFRPAGE: 0x20 SMBus 1 Control
__sfr __at (0xBB) SMB1DAT  ; // SFRPAGE: 0x20 SMBus 1 Data
__sfr __at (0xAD) SMB1FCN0 ; // SFRPAGE: 0x20 SMBus 1 FIFO Control 0
__sfr __at (0xAB) SMB1FCN1 ; // SFRPAGE: 0x20 SMBus 1 FIFO Control 1
__sfr __at (0xF5) SMB1FCT  ; // SFRPAGE: 0x20 SMBus 1 FIFO Count
__sfr __at (0xBC) SMB1RXLN ; // SFRPAGE: 0x20 SMBus 1 Receive Length Counter
__sfr __at (0xB9) SMB1TC   ; // SFRPAGE: 0x20 SMBus 1 Timing and Pin Control
__sfr __at (0x93) SMOD1    ; // SFRPAGE: 0x20 UART1 Mode
__sfr __at (0x81) SP       ; // SFRPAGE: ALL Stack Pointer
__sfr __at (0xA1) SPI0CFG  ; // SFRPAGE: 0x00, 0x20 SPI0 Configuration
__sfr __at (0xA2) SPI0CKR  ; // SFRPAGE: 0x00, 0x20 SPI0 Clock Rate
__sfr __at (0xF8) SPI0CN0  ; // SFRPAGE: 0x00, 0x20 SPI0 Control
__sfr __at (0xA3) SPI0DAT  ; // SFRPAGE: 0x00, 0x20 SPI0 Data
__sfr __at (0x9A) SPI0FCN0 ; // SFRPAGE: 0x20 SPI0 FIFO Control 0
__sfr __at (0x9B) SPI0FCN1 ; // SFRPAGE: 0x20 SPI0 FIFO Control 1
__sfr __at (0xF7) SPI0FCT  ; // SFRPAGE: 0x20 SPI0 FIFO Count
__sfr __at (0xDF) SPI0PCF  ; // SFRPAGE: 0x20 SPI0 Pin Configuration
__sfr __at (0x88) TCON     ; // SFRPAGE: 0x00, 0x10 Timer 0/1 Control
__sfr __at (0x8C) TH0      ; // SFRPAGE: 0x00, 0x10 Timer 0 High Byte
__sfr __at (0x8D) TH1      ; // SFRPAGE: 0x00, 0x10 Timer 1 High Byte
__sfr __at (0x8A) TL0      ; // SFRPAGE: 0x00, 0x10 Timer 0 Low Byte
__sfr __at (0x8B) TL1      ; // SFRPAGE: 0x00, 0x10 Timer 1 Low Byte
__sfr __at (0x89) TMOD     ; // SFRPAGE: 0x00, 0x10 Timer 0/1 Mode
__sfr __at (0xC8) TMR2CN0  ; // SFRPAGE: 0x00, 0x10 Timer 2 Control 0
__sfr __at (0xFD) TMR2CN1  ; // SFRPAGE: 0x10 Timer 2 Control 1
__sfr __at (0xCF) TMR2H    ; // SFRPAGE: 0x00, 0x10 Timer 2 High Byte
__sfr __at (0xCE) TMR2L    ; // SFRPAGE: 0x00, 0x10 Timer 2 Low Byte
__sfr __at (0xCB) TMR2RLH  ; // SFRPAGE: 0x00, 0x10 Timer 2 Reload High Byte
__sfr __at (0xCA) TMR2RLL  ; // SFRPAGE: 0x00, 0x10 Timer 2 Reload Low Byte
__sfr __at (0x91) TMR3CN0  ; // SFRPAGE: 0x00, 0x10 Timer 3 Control 0
__sfr __at (0xFE) TMR3CN1  ; // SFRPAGE: 0x10 Timer 3 Control 1
__sfr __at (0x95) TMR3H    ; // SFRPAGE: 0x00, 0x10 Timer 3 High Byte
__sfr __at (0x94) TMR3L    ; // SFRPAGE: 0x00, 0x10 Timer 3 Low Byte
__sfr __at (0x93) TMR3RLH  ; // SFRPAGE: 0x00, 0x10 Timer 3 Reload High Byte
__sfr __at (0x92) TMR3RLL  ; // SFRPAGE: 0x00, 0x10 Timer 3 Reload Low Byte
__sfr __at (0x98) TMR4CN0  ; // SFRPAGE: 0x10 Timer 4 Control 0
__sfr __at (0xFF) TMR4CN1  ; // SFRPAGE: 0x10 Timer 4 Control 1
__sfr __at (0xA5) TMR4H    ; // SFRPAGE: 0x10 Timer 4 High Byte
__sfr __at (0xA4) TMR4L    ; // SFRPAGE: 0x10 Timer 4 Low Byte
__sfr __at (0xA3) TMR4RLH  ; // SFRPAGE: 0x10 Timer 4 Reload High Byte
__sfr __at (0xA2) TMR4RLL  ; // SFRPAGE: 0x10 Timer 4 Reload Low Byte
__sfr __at (0xC0) TMR5CN0  ; // SFRPAGE: 0x10 Timer 5 Control 0
__sfr __at (0xF1) TMR5CN1  ; // SFRPAGE: 0x10 Timer 5 Control 1
__sfr __at (0xD5) TMR5H    ; // SFRPAGE: 0x10 Timer 5 High Byte
__sfr __at (0xD4) TMR5L    ; // SFRPAGE: 0x10 Timer 5 Low Byte
__sfr __at (0xD3) TMR5RLH  ; // SFRPAGE: 0x10 Timer 5 Reload High Byte
__sfr __at (0xD2) TMR5RLL  ; // SFRPAGE: 0x10 Timer 5 Reload Low Byte
__sfr __at (0xD9) UART0PCF ; // SFRPAGE: 0x20 UART0 Pin Configuration
__sfr __at (0x9D) UART1FCN0 ; // SFRPAGE: 0x20 UART1 FIFO Control 0
__sfr __at (0xD8) UART1FCN1 ; // SFRPAGE: 0x20 UART1 FIFO Control 1
__sfr __at (0xFA) UART1FCT ; // SFRPAGE: 0x20 UART1 FIFO Count
__sfr __at (0x9E) UART1LIN ; // SFRPAGE: 0x20 UART1 LIN Configuration
__sfr __at (0xDA) UART1PCF ; // SFRPAGE: 0x20 UART1 Pin Configuration
__sfr __at (0x97) WDTCN    ; // SFRPAGE: ALL Watchdog Timer Control
__sfr __at (0xE1) XBR0     ; // SFRPAGE: 0x00, 0x20 Port I/O Crossbar 0
__sfr __at (0xE2) XBR1     ; // SFRPAGE: 0x00, 0x20 Port I/O Crossbar 1
__sfr __at (0xE3) XBR2     ; // SFRPAGE: 0x00, 0x20 Port I/O Crossbar 2

// 16-Bit Register definitions (high,low)
__sfr16 __at (0x8382) DPTR;    // Data pointer
__sfr16 __at (0xCBCA) TMR2RL;  // Timer\Counter 2 reload data
__sfr16 __at (0x9392) TMR3RL;  // Timer\Counter 3 reload register
__sfr16 __at (0xA3A2) TMR4RL;  // Timer\Counter 4 reload register (SFR page 0x10)
__sfr16 __at (0xD3D2) TMR5RL;  // Timer\Counter 5 reload data (SFR page 0x10)
__sfr16 __at (0x8C8A) TMR0;    // Timer\Counter 0 data
__sfr16 __at (0x8D8B) TMR1;    // Timer\Counter 1 data
__sfr16 __at (0xCFCE) TMR2;    // Timer\Counter 2 data
__sfr16 __at (0x9594) TMR3;    // Timer 3 register
__sfr16 __at (0xA5A4) TMR4;    // Timer 4 register (SFR page 0x10)
__sfr16 __at (0xD5D4) TMR5;    // Timer\Counter 5 data (SFR page 0x10)
__sfr16 __at (0x9695) SBRL1;   // UART1 Baud Rate Generator (SFR page 0x20)
__sfr16 __at (0xFAF9) PCA0;    // PCA 0 counter data
__sfr16 __at (0xFCFB) PCA0CP0; // PCA module 0 capture/compare data
__sfr16 __at (0xEAE9) PCA0CP1; // PCA module 1 capture/compare data
__sfr16 __at (0xECEB) PCA0CP2; // PCA module 2 capture/compare data
__sfr16 __at (0xB6B5) ADC0ASA; // ADC0 Autoscan Start Address (SFR page 0x30)
__sfr16 __at (0xC4C3) ADC0GT;  // ADC0 Greater-Than         
__sfr16 __at (0xBEBD) ADC0;    // ADC0 Data Word               
__sfr16 __at (0xC6C5) ADC0LT;  // ADC0 Less-Than              
__sfr16 __at (0x8584) DAC0;    // DAC0 Data Word (SFR page 0x30)         
              
//------------------------------------------------------------------------------
// Bit Definitions
//------------------------------------------------------------------------------

// ACC 0xE0 (Accumulator)
__sbit __at (0xE0+0) ACC_0 ; // Accumulator Bit 0
__sbit __at (0xE0+1) ACC_1 ; // Accumulator Bit 0
__sbit __at (0xE0+2) ACC_2 ; // Accumulator Bit 0
__sbit __at (0xE0+3) ACC_3 ; // Accumulator Bit 0
__sbit __at (0xE0+4) ACC_4 ; // Accumulator Bit 0
__sbit __at (0xE0+5) ACC_5 ; // Accumulator Bit 0
__sbit __at (0xE0+6) ACC_6 ; // Accumulator Bit 0
__sbit __at (0xE0+7) ACC_7 ; // Accumulator Bit 0

// ADC0CN0 0xE8 (ADC0 Control 0)
__sbit __at (0xE8+0) TEMPE  ; // Temperature Sensor Enable         
__sbit __at (0xE8+1) ADGN0  ; // Gain Control Bit 0                
__sbit __at (0xE8+2) ADGN1  ; // Gain Control Bit 1                
__sbit __at (0xE8+3) ADWINT ; // Window Compare Interrupt Flag     
__sbit __at (0xE8+4) ADBUSY ; // ADC Busy                          
__sbit __at (0xE8+5) ADINT  ; // Conversion Complete Interrupt Flag
__sbit __at (0xE8+6) IPOEN  ; // Idle Powered-off Enable           
__sbit __at (0xE8+7) ADEN   ; // ADC Enable                        

// B 0xF0 (B Register)
__sbit __at (0xF0+0) B_0 ; // B Register Bit 0
__sbit __at (0xF0+1) B_1 ; // B Register Bit 1
__sbit __at (0xF0+2) B_2 ; // B Register Bit 2
__sbit __at (0xF0+3) B_3 ; // B Register Bit 3
__sbit __at (0xF0+4) B_4 ; // B Register Bit 4
__sbit __at (0xF0+5) B_5 ; // B Register Bit 5
__sbit __at (0xF0+6) B_6 ; // B Register Bit 6
__sbit __at (0xF0+7) B_7 ; // B Register Bit 7

// CLIF0 0xE8 (Configurable Logic Interrupt Flag 0)
__sbit __at (0xE8+0) C0FIF ; // CLU0 Falling Edge Interrupt Flag
__sbit __at (0xE8+1) C0RIF ; // CLU0 Rising Edge Interrupt Flag 
__sbit __at (0xE8+2) C1FIF ; // CLU1 Falling Edge Interrupt Flag
__sbit __at (0xE8+3) C1RIF ; // CLU1 Rising Edge Interrupt Flag 
__sbit __at (0xE8+4) C2FIF ; // CLU2 Falling Edge Interrupt Flag
__sbit __at (0xE8+5) C2RIF ; // CLU2 Rising Edge Interrupt Flag 
__sbit __at (0xE8+6) C3FIF ; // CLU3 Falling Edge Interrupt Flag
__sbit __at (0xE8+7) C3RIF ; // CLU3 Rising Edge Interrupt Flag 

// IE 0xA8 (Interrupt Enable)
__sbit __at (0xA8+0) EX0   ; // External Interrupt 0 Enable
__sbit __at (0xA8+1) ET0   ; // Timer 0 Interrupt Enable   
__sbit __at (0xA8+2) EX1   ; // External Interrupt 1 Enable
__sbit __at (0xA8+3) ET1   ; // Timer 1 Interrupt Enable   
__sbit __at (0xA8+4) ES0   ; // UART0 Interrupt Enable     
__sbit __at (0xA8+5) ET2   ; // Timer 2 Interrupt Enable   
__sbit __at (0xA8+6) ESPI0 ; // SPI0 Interrupt Enable      
__sbit __at (0xA8+7) EA    ; // All Interrupts Enable      

// IP 0xB8 (Interrupt Priority)
__sbit __at (0xB8+0) PX0   ; // External Interrupt 0 Priority Control LSB                        
__sbit __at (0xB8+1) PT0   ; // Timer 0 Interrupt Priority Control LSB                           
__sbit __at (0xB8+2) PX1   ; // External Interrupt 1 Priority Control LSB                        
__sbit __at (0xB8+3) PT1   ; // Timer 1 Interrupt Priority Control LSB                           
__sbit __at (0xB8+4) PS0   ; // UART0 Interrupt Priority Control LSB                             
__sbit __at (0xB8+5) PT2   ; // Timer 2 Interrupt Priority Control LSB                           
__sbit __at (0xB8+6) PSPI0 ; // Serial Peripheral Interface (SPI0) Interrupt Priority Control LSB

// P0 0x80 (Port 0 Pin Latch)
__sbit __at (0x80+0) P0_0   ; // Port 0 Bit 0 Latch
__sbit __at (0x80+1) P0_1   ; // Port 0 Bit 1 Latch
__sbit __at (0x80+2) P0_2   ; // Port 0 Bit 2 Latch
__sbit __at (0x80+3) P0_3   ; // Port 0 Bit 3 Latch
__sbit __at (0x80+4) P0_4   ; // Port 0 Bit 4 Latch
__sbit __at (0x80+5) P0_5   ; // Port 0 Bit 5 Latch
__sbit __at (0x80+6) P0_6   ; // Port 0 Bit 6 Latch
__sbit __at (0x80+7) P0_7   ; // Port 0 Bit 7 Latch

// P1 0x90 (Port 1 Pin Latch)
__sbit __at (0x90+0) P1_0 ; // Port 1 Bit 0 Latch
__sbit __at (0x90+1) P1_1 ; // Port 1 Bit 1 Latch
__sbit __at (0x90+2) P1_2 ; // Port 1 Bit 2 Latch
__sbit __at (0x90+3) P1_3 ; // Port 1 Bit 3 Latch
__sbit __at (0x90+4) P1_4 ; // Port 1 Bit 4 Latch
__sbit __at (0x90+5) P1_5 ; // Port 1 Bit 5 Latch
__sbit __at (0x90+6) P1_6 ; // Port 1 Bit 6 Latch
__sbit __at (0x90+7) P1_7 ; // Port 1 Bit 7 Latch

// P2 0xA0 (Port 2 Pin Latch)
__sbit __at (0xA0+0) P2_0 ; // Port 2 Bit 0 Latch
__sbit __at (0xA0+1) P2_1 ; // Port 2 Bit 1 Latch
__sbit __at (0xA0+2) P2_2 ; // Port 2 Bit 2 Latch
__sbit __at (0xA0+3) P2_3 ; // Port 2 Bit 3 Latch
__sbit __at (0xA0+4) P2_4 ; // Port 2 Bit 4 Latch
__sbit __at (0xA0+5) P2_5 ; // Port 2 Bit 5 Latch
__sbit __at (0xA0+6) P2_6 ; // Port 2 Bit 6 Latch
__sbit __at (0xA0+7) P2_7 ; // Port 2 Bit 6 Latch

// P3 0xB0 (Port 3 Pin Latch)
__sbit __at (0xB0+0) P3_0 ; // Port 3 Bit 0 Latch
__sbit __at (0xB0+1) P3_1 ; // Port 3 Bit 1 Latch
__sbit __at (0xB0+2) P3_2 ; // Port 3 Bit 2 Latch
__sbit __at (0xB0+3) P3_3 ; // Port 3 Bit 3 Latch
__sbit __at (0xB0+4) P3_4 ; // Port 3 Bit 4 Latch
__sbit __at (0xB0+5) P3_5 ; // Port 3 Bit 7 Latch
__sbit __at (0xB0+6) P3_6 ; // Port 3 Bit 7 Latch
__sbit __at (0xB0+7) P3_7 ; // Port 3 Bit 7 Latch

// PCA0CN0 0xD8 (PCA Control)
__sbit __at (0xD8+0) CCF0 ; // PCA Module 0 Capture/Compare Flag
__sbit __at (0xD8+1) CCF1 ; // PCA Module 1 Capture/Compare Flag
__sbit __at (0xD8+2) CCF2 ; // PCA Module 2 Capture/Compare Flag
__sbit __at (0xD8+6) CR   ; // PCA Counter/Timer Run Control    
__sbit __at (0xD8+7) CF   ; // PCA Counter/Timer Overflow Flag  

// PSW 0xD0 (Program Status Word)
__sbit __at (0xD0+0) PARITY ; // Parity Flag               
__sbit __at (0xD0+1) F1     ; // User Flag 1               
__sbit __at (0xD0+2) OV     ; // Overflow Flag             
__sbit __at (0xD0+3) RS0    ; // Register Bank Select Bit 0
__sbit __at (0xD0+4) RS1    ; // Register Bank Select Bit 1
__sbit __at (0xD0+5) F0     ; // User Flag 0               
__sbit __at (0xD0+6) AC     ; // Auxiliary Carry Flag      
__sbit __at (0xD0+7) CY     ; // Carry Flag                

// SCON0 0x98 (UART0 Serial Port Control)
__sbit __at (0x98+0) RI    ; // Receive Interrupt Flag             
__sbit __at (0x98+1) TI    ; // Transmit Interrupt Flag            
__sbit __at (0x98+2) RB8   ; // Ninth Receive Bit                  
__sbit __at (0x98+3) TB8   ; // Ninth Transmission Bit             
__sbit __at (0x98+4) REN   ; // Receive Enable                     
__sbit __at (0x98+5) CE    ; // Multiprocessor Communication Enable
__sbit __at (0x98+6) SMODE ; // Serial Port 0 Operation Mode       

// SCON1 0xC8 (UART1 Serial Port Control)
__sbit __at (0xC8+0) RI1   ; // Receive Interrupt Flag   
__sbit __at (0xC8+1) TI1   ; // Transmit Interrupt Flag  
__sbit __at (0xC8+2) RBX1  ; // Extra Receive Bit        
__sbit __at (0xC8+3) TBX1  ; // Extra Transmission Bit   
__sbit __at (0xC8+4) REN1  ; // Receive Enable           
__sbit __at (0xC8+6) PERR1 ; // Parity Error Flag        
__sbit __at (0xC8+7) OVR1  ; // Receive FIFO Overrun Flag

// SMB0CN0 0xC0 (SMBus 0 Control)
__sbit __at (0xC0+0) SI      ; // SMBus Interrupt Flag            
__sbit __at (0xC0+1) ACK     ; // SMBus Acknowledge               
__sbit __at (0xC0+2) ARBLOST ; // SMBus Arbitration Lost Indicator
__sbit __at (0xC0+3) ACKRQ   ; // SMBus Acknowledge Request       
__sbit __at (0xC0+4) STO     ; // SMBus Stop Flag                 
__sbit __at (0xC0+5) STA     ; // SMBus Start Flag                
__sbit __at (0xC0+6) TXMODE  ; // SMBus Transmit Mode Indicator   
__sbit __at (0xC0+7) MASTER  ; // SMBus Master/Slave Indicator    

// SPI0CN0 0xF8 (SPI0 Control)
__sbit __at (0xF8+0) SPIEN  ; // SPI0 Enable            
__sbit __at (0xF8+1) TXNF   ; // TX FIFO Not Full       
__sbit __at (0xF8+2) NSSMD0 ; // Slave Select Mode Bit 0
__sbit __at (0xF8+3) NSSMD1 ; // Slave Select Mode Bit 1
__sbit __at (0xF8+4) RXOVRN ; // Receive Overrun Flag   
__sbit __at (0xF8+5) MODF   ; // Mode Fault Flag        
__sbit __at (0xF8+6) WCOL   ; // Write Collision Flag   
__sbit __at (0xF8+7) SPIF   ; // SPI0 Interrupt Flag    

// TCON 0x88 (Timer 0/1 Control)
__sbit __at (0x88+0) IT0 ; // Interrupt 0 Type Select
__sbit __at (0x88+1) IE0 ; // External Interrupt 0   
__sbit __at (0x88+2) IT1 ; // Interrupt 1 Type Select
__sbit __at (0x88+3) IE1 ; // External Interrupt 1   
__sbit __at (0x88+4) TR0 ; // Timer 0 Run Control    
__sbit __at (0x88+5) TF0 ; // Timer 0 Overflow Flag  
__sbit __at (0x88+6) TR1 ; // Timer 1 Run Control    
__sbit __at (0x88+7) TF1 ; // Timer 1 Overflow Flag  

// TMR2CN0 0xC8 (Timer 2 Control 0)
__sbit __at (0xC8+0) T2XCLK0 ; // Timer 2 External Clock Select Bit 0
__sbit __at (0xC8+1) T2XCLK1 ; // Timer 2 External Clock Select Bit 1
__sbit __at (0xC8+2) TR2     ; // Timer 2 Run Control                
__sbit __at (0xC8+3) T2SPLIT ; // Timer 2 Split Mode Enable          
__sbit __at (0xC8+4) TF2CEN  ; // Timer 2 Capture Enable             
__sbit __at (0xC8+5) TF2LEN  ; // Timer 2 Low Byte Interrupt Enable  
__sbit __at (0xC8+6) TF2L    ; // Timer 2 Low Byte Overflow Flag     
__sbit __at (0xC8+7) TF2H    ; // Timer 2 High Byte Overflow Flag    

// TMR4CN0 0x98 (Timer 4 Control 0)
__sbit __at (0x98+0) T4XCLK0 ; // Timer 4 External Clock Select Bit 0
__sbit __at (0x98+1) T4XCLK1 ; // Timer 4 External Clock Select Bit 1
__sbit __at (0x98+2) TR4     ; // Timer 4 Run Control                
__sbit __at (0x98+3) T4SPLIT ; // Timer 4 Split Mode Enable          
__sbit __at (0x98+4) TF4CEN  ; // Timer 4 Capture Enable             
__sbit __at (0x98+5) TF4LEN  ; // Timer 4 Low Byte Interrupt Enable  
__sbit __at (0x98+6) TF4L    ; // Timer 4 Low Byte Overflow Flag     
__sbit __at (0x98+7) TF4H    ; // Timer 4 High Byte Overflow Flag    

// TMR5CN0 0xC0 (Timer 5 Control 0)
__sbit __at (0xC0+0) T5XCLK0 ; // Timer 5 External Clock Select Bit 0
__sbit __at (0xC0+1) T5XCLK1 ; // Timer 5 External Clock Select Bit 1
__sbit __at (0xC0+2) TR5     ; // Timer 5 Run Control                
__sbit __at (0xC0+3) T5SPLIT ; // Timer 5 Split Mode Enable          
__sbit __at (0xC0+4) TF5CEN  ; // Timer 5 Capture Enable             
__sbit __at (0xC0+5) TF5LEN  ; // Timer 5 Low Byte Interrupt Enable  
__sbit __at (0xC0+6) TF5L    ; // Timer 5 Low Byte Overflow Flag     
__sbit __at (0xC0+7) TF5H    ; // Timer 5 High Byte Overflow Flag    

// UART1FCN1 0xD8 (UART1 FIFO Control 1)
__sbit __at (0xD8+0) RIE    ; // Receive Interrupt Enable 
__sbit __at (0xD8+1) RXTO0  ; // Receive Timeout Bit 0    
__sbit __at (0xD8+2) RXTO1  ; // Receive Timeout Bit 1    
__sbit __at (0xD8+3) RFRQ   ; // Receive FIFO Request     
__sbit __at (0xD8+4) TIE    ; // Transmit Interrupt Enable
__sbit __at (0xD8+5) TXHOLD ; // Transmit Hold            
__sbit __at (0xD8+6) TXNF1   ; // TX FIFO Not Full         
__sbit __at (0xD8+7) TFRQ   ; // Transmit FIFO Request    

#endif // REG_EFM8BB52_H