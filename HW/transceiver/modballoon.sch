EESchema Schematic File Version 2
LIBS:modballoon-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Balon
LIBS:mic4680-3
LIBS:sam4sd16
LIBS:sam_jtag
LIBS:tps22945dckr
LIBS:fa-238v-12mhz
LIBS:sma
LIBS:si4463
LIBS:7q-26
LIBS:as193
LIBS:sp5189z
LIBS:spf5189z
LIBS:saw
LIBS:rf5110g
LIBS:modballoon-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Balloon"
Date "4 may 2016"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2900 1950 950  600 
U 57272ECF
F0 "Power Supply" 50
F1 "pwr.sch" 50
F2 "Vbat" I L 2900 2150 60 
F3 "TxOn" I R 3850 2450 60 
F4 "3V3" O R 3850 2150 60 
F5 "3V3Tx" O R 3850 2050 60 
$EndSheet
$Comp
L FUSE F1
U 1 1 572756B1
P 2050 2150
F 0 "F1" H 2150 2200 40  0000 C CNN
F 1 "2A" H 1950 2100 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 2150 60  0001 C CNN
F 3 "MC06CF 002" H 2050 2150 60  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
$Sheet
S 4750 1950 1000 2050
U 5727590C
F0 "Microcontroller" 50
F1 "mcu.sch" 50
F2 "3V3" I L 4750 2150 60 
F3 "TxOn" O L 4750 2450 60 
F4 "SDN" O R 5750 2450 60 
F5 "nSEL" O R 5750 2550 60 
F6 "SDI" O R 5750 2650 60 
F7 "SDO" I R 5750 2750 60 
F8 "SCLK" O R 5750 2850 60 
F9 "nIRQ" O R 5750 2950 60 
F10 "GPSOn" O R 5750 3250 60 
F11 "GPSUartRx" I R 5750 3350 60 
F12 "Vbat" I L 4750 2700 60 
F13 "UartRx" I L 4750 3900 60 
F14 "UartTx" O L 4750 3800 60 
F15 "SDA" B L 4750 3200 60 
F16 "SCL" O L 4750 3300 60 
F17 "GPIO0" B L 4750 3400 60 
F18 "GPIO1" B L 4750 3500 60 
F19 "GPIO2" B L 4750 3600 60 
$EndSheet
$Sheet
S 7100 1950 1200 1100
U 5727590E
F0 "Modem" 50
F1 "Modem.sch" 50
F2 "3V3" I L 7100 2150 60 
F3 "3V3Tx" I L 7100 2050 60 
F4 "SDN" I L 7100 2450 60 
F5 "nSEL" I L 7100 2550 60 
F6 "SDI" I L 7100 2650 60 
F7 "SDO" O L 7100 2750 60 
F8 "SCLK" I L 7100 2850 60 
F9 "nIRQ" O L 7100 2950 60 
F10 "ANT" B R 8300 2050 60 
F11 "ADSB" O R 8300 2950 60 
$EndSheet
$Comp
L HE10-20 K7
U 1 1 5727D689
P 9050 4250
F 0 "K7" H 9050 4800 70  0000 C CNN
F 1 "HE10-20" H 9050 3700 70  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10" H 9050 4250 60  0001 C CNN
F 3 "" H 9050 4250 60  0000 C CNN
	1    9050 4250
	1    0    0    -1  
$EndComp
Text Notes 8850 3650 0    60   ~ 0
GPS piNAV L1\n
$Comp
L GND-RESCUE-modballoon #PWR01
U 1 1 5727DFD4
P 8350 4100
F 0 "#PWR01" H 8350 4100 30  0001 C CNN
F 1 "GND" H 8350 4030 30  0001 C CNN
F 2 "" H 8350 4100 60  0000 C CNN
F 3 "" H 8350 4100 60  0000 C CNN
	1    8350 4100
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR02
U 1 1 5727E8D1
P 9750 4100
F 0 "#PWR02" H 9750 4100 30  0001 C CNN
F 1 "GND" H 9750 4030 30  0001 C CNN
F 2 "" H 9750 4100 60  0000 C CNN
F 3 "" H 9750 4100 60  0000 C CNN
	1    9750 4100
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 5727EAF5
P 7750 4400
F 0 "L1" H 7750 4500 50  0000 C CNN
F 1 "74279204" H 7750 4350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 7750 4400 60  0001 C CNN
F 3 "74279204" H 7750 4400 60  0001 C CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-modballoon C1
U 1 1 5727EBC0
P 8150 4650
F 0 "C1" H 8150 4750 40  0000 L CNN
F 1 "M1" H 8156 4565 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8188 4500 30  0001 C CNN
F 3 "~" H 8150 4650 60  0000 C CNN
	1    8150 4650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR03
U 1 1 5727ED04
P 8150 4950
F 0 "#PWR03" H 8150 4950 30  0001 C CNN
F 1 "GND" H 8150 4880 30  0001 C CNN
F 2 "" H 8150 4950 60  0000 C CNN
F 3 "" H 8150 4950 60  0000 C CNN
	1    8150 4950
	1    0    0    -1  
$EndComp
$Comp
L TPS22945DCKR DD1
U 1 1 5727F331
P 6600 4500
F 0 "DD1" H 6600 4500 60  0000 C CNN
F 1 "TPS22945DCKR" H 6600 4100 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-5" H 6600 4500 60  0001 C CNN
F 3 "~" H 6600 4500 60  0000 C CNN
	1    6600 4500
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR04
U 1 1 5727F512
P 7200 4300
F 0 "#PWR04" H 7200 4300 30  0001 C CNN
F 1 "GND" H 7200 4230 30  0001 C CNN
F 2 "" H 7200 4300 60  0000 C CNN
F 3 "" H 7200 4300 60  0000 C CNN
	1    7200 4300
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-modballoon R2
U 1 1 5727FE4D
P 8200 5550
F 0 "R2" V 8280 5550 40  0000 C CNN
F 1 "1k" V 8100 5550 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8130 5550 30  0001 C CNN
F 3 "~" H 8200 5550 30  0000 C CNN
	1    8200 5550
	0    -1   -1   0   
$EndComp
Text Notes 8750 5250 0    60   ~ 0
OpneLOG\n
$Comp
L R-RESCUE-modballoon R3
U 1 1 57282497
P 10050 4000
F 0 "R3" V 10130 4000 40  0000 C CNN
F 1 "1k" V 9950 4000 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9980 4000 30  0001 C CNN
F 3 "~" H 10050 4000 30  0000 C CNN
	1    10050 4000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6 K4
U 1 1 572829E3
P 9000 5700
F 0 "K4" H 8950 5350 60  0000 C CNN
F 1 "CONN_6" H 9000 6050 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 9000 5700 60  0001 C CNN
F 3 "" H 9000 5700 60  0000 C CNN
	1    9000 5700
	1    0    0    1   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR05
U 1 1 57282B41
P 8350 6300
F 0 "#PWR05" H 8350 6300 30  0001 C CNN
F 1 "GND" H 8350 6230 30  0001 C CNN
F 2 "" H 8350 6300 60  0000 C CNN
F 3 "" H 8350 6300 60  0000 C CNN
	1    8350 6300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-modballoon C2
U 1 1 57282C5C
P 8350 6000
F 0 "C2" H 8350 6100 40  0000 L CNN
F 1 "M1" H 8356 5915 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8388 5850 30  0001 C CNN
F 3 "~" H 8350 6000 60  0000 C CNN
	1    8350 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 K1
U 1 1 57287BC9
P 1200 2200
F 0 "K1" H 1250 2550 60  0000 C CNN
F 1 "CONN_6" H 1200 1850 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 1200 2200 60  0001 C CNN
F 3 "" H 1200 2200 60  0000 C CNN
	1    1200 2200
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR06
U 1 1 5728802D
P 1650 2550
F 0 "#PWR06" H 1650 2550 30  0001 C CNN
F 1 "GND" H 1650 2480 30  0001 C CNN
F 2 "" H 1650 2550 60  0000 C CNN
F 3 "" H 1650 2550 60  0000 C CNN
	1    1650 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 K3
U 1 1 57287DCC
P 1200 4900
F 0 "K3" H 1150 4550 60  0000 C CNN
F 1 "CONN_6" H 1200 5250 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 1200 4900 60  0001 C CNN
F 3 "" H 1200 4900 60  0000 C CNN
	1    1200 4900
	-1   0    0    1   
$EndComp
Text Notes 1000 4450 0    60   ~ 0
FTDI cable\n
$Comp
L GND-RESCUE-modballoon #PWR07
U 1 1 57287FF5
P 1600 5250
F 0 "#PWR07" H 1600 5250 30  0001 C CNN
F 1 "GND" H 1600 5180 30  0001 C CNN
F 2 "" H 1600 5250 60  0000 C CNN
F 3 "" H 1600 5250 60  0000 C CNN
	1    1600 5250
	1    0    0    -1  
$EndComp
$Comp
L CONN_10 K2
U 1 1 5728974B
P 1200 3450
F 0 "K2" H 1250 4000 60  0000 C CNN
F 1 "CONN_10" H 1200 2850 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 1200 3450 60  0001 C CNN
F 3 "" H 1200 3450 60  0000 C CNN
	1    1200 3450
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR08
U 1 1 57289C7D
P 1650 4000
F 0 "#PWR08" H 1650 4000 30  0001 C CNN
F 1 "GND" H 1650 3930 30  0001 C CNN
F 2 "" H 1650 4000 60  0000 C CNN
F 3 "" H 1650 4000 60  0000 C CNN
	1    1650 4000
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-modballoon R1
U 1 1 5728A622
P 6750 5550
F 0 "R1" V 6830 5550 40  0000 C CNN
F 1 "1k" V 6650 5550 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6680 5550 30  0001 C CNN
F 3 "~" H 6750 5550 30  0000 C CNN
	1    6750 5550
	0    -1   -1   0   
$EndComp
$Comp
L SMA K5
U 1 1 5728B54B
P 9050 2400
F 0 "K5" H 9050 2950 60  0000 C CNN
F 1 "SMA" H 8800 2650 60  0000 C CNN
F 2 "Balloln_pretty:SMA" H 9050 2400 60  0001 C CNN
F 3 "~" H 9050 2400 60  0000 C CNN
	1    9050 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR09
U 1 1 5728B696
P 8900 2600
F 0 "#PWR09" H 8900 2600 30  0001 C CNN
F 1 "GND" H 8900 2530 30  0001 C CNN
F 2 "" H 8900 2600 60  0000 C CNN
F 3 "" H 8900 2600 60  0000 C CNN
	1    8900 2600
	1    0    0    -1  
$EndComp
$Comp
L SMA K6
U 1 1 5728BAA9
P 9050 3300
F 0 "K6" H 9050 3850 60  0000 C CNN
F 1 "SMA" H 8800 3550 60  0000 C CNN
F 2 "Balloln_pretty:SMA" H 9050 3300 60  0001 C CNN
F 3 "~" H 9050 3300 60  0000 C CNN
	1    9050 3300
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR010
U 1 1 5728BAAF
P 8900 3500
F 0 "#PWR010" H 8900 3500 30  0001 C CNN
F 1 "GND" H 8900 3430 30  0001 C CNN
F 2 "" H 8900 3500 60  0000 C CNN
F 3 "" H 8900 3500 60  0000 C CNN
	1    8900 3500
	1    0    0    -1  
$EndComp
Text Notes 9450 2950 0    60   ~ 0
Vystup 1090 MHz do SDR\n
Text Notes 9450 2100 0    60   ~ 0
Rx/Tx/1090MHz antena\n
Text Notes 1050 1750 0    60   ~ 0
Napajeni\n
Text Notes 1050 2800 0    60   ~ 0
Rozsirujici konektor\n
$Comp
L CONN_01X01 M1
U 1 1 5732C6B0
P 1000 5750
F 0 "M1" V 1000 5650 50  0000 C CNN
F 1 "CONN_01X01" V 1100 5750 50  0000 C CNN
F 2 "Balloln_pretty:M2" H 1000 5750 50  0001 C CNN
F 3 "" H 1000 5750 50  0000 C CNN
	1    1000 5750
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR011
U 1 1 5732D2B3
P 1000 6000
F 0 "#PWR011" H 1000 6000 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 1000 5930 30  0001 C CNN
F 2 "" H 1000 6000 60  0000 C CNN
F 3 "" H 1000 6000 60  0000 C CNN
	1    1000 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M3
U 1 1 5732D9F4
P 1550 5750
F 0 "M3" V 1550 5650 50  0000 C CNN
F 1 "CONN_01X01" V 1650 5750 50  0000 C CNN
F 2 "Balloln_pretty:M2" H 1550 5750 50  0001 C CNN
F 3 "" H 1550 5750 50  0000 C CNN
	1    1550 5750
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR012
U 1 1 5732D9FA
P 1550 6000
F 0 "#PWR012" H 1550 6000 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 1550 5930 30  0001 C CNN
F 2 "" H 1550 6000 60  0000 C CNN
F 3 "" H 1550 6000 60  0000 C CNN
	1    1550 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M5
U 1 1 5732DD20
P 2100 5750
F 0 "M5" V 2100 5650 50  0000 C CNN
F 1 "CONN_01X01" V 2200 5750 50  0000 C CNN
F 2 "Balloln_pretty:M3" H 2100 5750 50  0001 C CNN
F 3 "" H 2100 5750 50  0000 C CNN
	1    2100 5750
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR013
U 1 1 5732DD26
P 2100 6000
F 0 "#PWR013" H 2100 6000 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 2100 5930 30  0001 C CNN
F 2 "" H 2100 6000 60  0000 C CNN
F 3 "" H 2100 6000 60  0000 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M7
U 1 1 5732DD2D
P 2650 5750
F 0 "M7" V 2650 5650 50  0000 C CNN
F 1 "CONN_01X01" V 2750 5750 50  0000 C CNN
F 2 "Balloln_pretty:M3" H 2650 5750 50  0001 C CNN
F 3 "" H 2650 5750 50  0000 C CNN
	1    2650 5750
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR014
U 1 1 5732DD33
P 2650 6000
F 0 "#PWR014" H 2650 6000 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 2650 5930 30  0001 C CNN
F 2 "" H 2650 6000 60  0000 C CNN
F 3 "" H 2650 6000 60  0000 C CNN
	1    2650 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M2
U 1 1 5732DF3B
P 1000 6500
F 0 "M2" V 1000 6400 50  0000 C CNN
F 1 "CONN_01X01" V 1100 6500 50  0000 C CNN
F 2 "Balloln_pretty:M2" H 1000 6500 50  0001 C CNN
F 3 "" H 1000 6500 50  0000 C CNN
	1    1000 6500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR015
U 1 1 5732DF41
P 1000 6750
F 0 "#PWR015" H 1000 6750 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 1000 6680 30  0001 C CNN
F 2 "" H 1000 6750 60  0000 C CNN
F 3 "" H 1000 6750 60  0000 C CNN
	1    1000 6750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M4
U 1 1 5732DF48
P 1550 6500
F 0 "M4" V 1550 6400 50  0000 C CNN
F 1 "CONN_01X01" V 1650 6500 50  0000 C CNN
F 2 "Balloln_pretty:M2" H 1550 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0000 C CNN
	1    1550 6500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR016
U 1 1 5732DF4E
P 1550 6750
F 0 "#PWR016" H 1550 6750 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 1550 6680 30  0001 C CNN
F 2 "" H 1550 6750 60  0000 C CNN
F 3 "" H 1550 6750 60  0000 C CNN
	1    1550 6750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M6
U 1 1 5732DF55
P 2100 6500
F 0 "M6" V 2100 6400 50  0000 C CNN
F 1 "CONN_01X01" V 2200 6500 50  0000 C CNN
F 2 "Balloln_pretty:M3" H 2100 6500 50  0001 C CNN
F 3 "" H 2100 6500 50  0000 C CNN
	1    2100 6500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR017
U 1 1 5732DF5B
P 2100 6750
F 0 "#PWR017" H 2100 6750 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 2100 6680 30  0001 C CNN
F 2 "" H 2100 6750 60  0000 C CNN
F 3 "" H 2100 6750 60  0000 C CNN
	1    2100 6750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 M8
U 1 1 5732DF62
P 2650 6500
F 0 "M8" V 2650 6400 50  0000 C CNN
F 1 "CONN_01X01" V 2750 6500 50  0000 C CNN
F 2 "Balloln_pretty:M3" H 2650 6500 50  0001 C CNN
F 3 "" H 2650 6500 50  0000 C CNN
	1    2650 6500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR018
U 1 1 5732DF68
P 2650 6750
F 0 "#PWR018" H 2650 6750 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 2650 6680 30  0001 C CNN
F 2 "" H 2650 6750 60  0000 C CNN
F 3 "" H 2650 6750 60  0000 C CNN
	1    2650 6750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X24 S1
U 1 1 5732D6E5
P 2850 7100
F 0 "S1" V 2950 8100 50  0000 C CNN
F 1 "BMI-S-210-F " V 2950 7100 50  0000 C CNN
F 2 "Balloln_pretty:BMI-S-210-F" V 2600 7100 50  0001 C CNN
F 3 "" H 2850 7100 50  0000 C CNN
	1    2850 7100
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-modballoon #PWR019
U 1 1 5732F511
P 1800 7400
F 0 "#PWR019" H 1800 7400 30  0001 C CNN
F 1 "GND-RESCUE-modballoon" H 1800 7330 30  0001 C CNN
F 2 "" H 1800 7400 60  0000 C CNN
F 3 "" H 1800 7400 60  0000 C CNN
	1    1800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2150 2900 2150
Wire Wire Line
	3850 2050 3950 2050
Wire Wire Line
	3950 2050 3950 1750
Wire Wire Line
	3950 1750 7000 1750
Wire Wire Line
	7000 1750 7000 2050
Wire Wire Line
	7000 2050 7100 2050
Wire Wire Line
	3850 2150 4750 2150
Wire Wire Line
	4050 1850 4050 3000
Wire Wire Line
	4050 1850 6900 1850
Wire Wire Line
	6900 1850 6900 2150
Wire Wire Line
	6900 2150 7100 2150
Connection ~ 4050 2150
Wire Wire Line
	4750 2450 3850 2450
Wire Wire Line
	7100 2450 5750 2450
Wire Wire Line
	5750 2550 7100 2550
Wire Wire Line
	7100 2650 5750 2650
Wire Wire Line
	5750 2750 7100 2750
Wire Wire Line
	7100 2850 5750 2850
Wire Wire Line
	5750 2950 7100 2950
Wire Wire Line
	7950 3800 8450 3800
Wire Wire Line
	7950 3250 7950 3800
Wire Wire Line
	5750 3250 7950 3250
Wire Wire Line
	8450 4100 8350 4100
Wire Wire Line
	9650 4100 9750 4100
Wire Wire Line
	9650 4400 9750 4400
Wire Wire Line
	9750 4400 9750 4900
Wire Wire Line
	9750 4900 8350 4900
Wire Wire Line
	8350 4900 8350 4400
Wire Wire Line
	8000 4400 8450 4400
Connection ~ 8350 4400
Wire Wire Line
	8150 4450 8150 4400
Connection ~ 8150 4400
Wire Wire Line
	8150 4850 8150 4950
Wire Wire Line
	7150 4400 7500 4400
Wire Wire Line
	6100 4200 6000 4200
Wire Wire Line
	6000 4200 6000 3350
Wire Wire Line
	6000 3350 5750 3350
Wire Wire Line
	6100 4400 5900 4400
Wire Wire Line
	5900 1850 5900 5750
Connection ~ 5900 1850
Wire Wire Line
	7200 4300 7150 4300
Wire Wire Line
	7350 5550 7350 3250
Connection ~ 7350 3250
Wire Wire Line
	2750 2150 2750 2700
Connection ~ 2750 2150
Wire Wire Line
	9800 4000 9650 4000
Wire Wire Line
	8600 5850 8600 6200
Wire Wire Line
	8600 5850 8650 5850
Wire Wire Line
	8650 5950 8600 5950
Connection ~ 8600 5950
Wire Wire Line
	8350 6150 8350 6300
Wire Wire Line
	5900 5750 8650 5750
Wire Wire Line
	8350 5750 8350 5800
Wire Wire Line
	8600 6200 8350 6200
Connection ~ 8350 6200
Connection ~ 5900 4400
Connection ~ 8350 5750
Wire Wire Line
	8650 5550 8450 5550
Wire Wire Line
	7000 5550 7950 5550
Wire Wire Line
	2750 2700 4750 2700
Wire Wire Line
	1550 1950 1650 1950
Connection ~ 1650 2050
Wire Wire Line
	1550 2450 1650 2450
Connection ~ 1650 2450
Wire Wire Line
	1550 2350 1650 2350
Connection ~ 1650 2350
Wire Wire Line
	1650 3100 1650 4000
Wire Wire Line
	1650 3900 1550 3900
Wire Wire Line
	1550 3100 1650 3100
Connection ~ 1650 3900
Wire Wire Line
	4050 3000 1550 3000
Wire Wire Line
	1550 3800 3800 3800
Wire Wire Line
	3800 3800 3800 6600
Wire Wire Line
	3800 6600 10500 6600
Wire Wire Line
	10500 6600 10500 4000
Wire Wire Line
	10500 4000 10300 4000
Connection ~ 7350 5550
Wire Wire Line
	6500 5550 3900 5550
Wire Wire Line
	3900 5550 3900 3700
Wire Wire Line
	3900 3700 1550 3700
Wire Wire Line
	4750 3200 1550 3200
Wire Wire Line
	1550 3300 4750 3300
Wire Wire Line
	4750 3400 1550 3400
Wire Wire Line
	4750 3500 1550 3500
Wire Wire Line
	4750 3600 1550 3600
Wire Wire Line
	1600 5250 1600 5150
Wire Wire Line
	1600 5150 1550 5150
Wire Wire Line
	4750 3800 4200 3800
Wire Wire Line
	4200 3800 4200 4750
Wire Wire Line
	4200 4750 1550 4750
Wire Wire Line
	1550 4850 4300 4850
Wire Wire Line
	4300 4850 4300 3900
Wire Wire Line
	4300 3900 4750 3900
Wire Wire Line
	8900 2500 8900 2600
Wire Wire Line
	9200 2550 9200 2500
Wire Wire Line
	8900 2550 9200 2550
Connection ~ 8900 2550
Wire Wire Line
	9000 2500 9000 2550
Connection ~ 9000 2550
Wire Wire Line
	9100 2500 9100 2550
Connection ~ 9100 2550
Wire Wire Line
	8700 2050 8300 2050
Wire Wire Line
	8900 3400 8900 3500
Wire Wire Line
	9200 3450 9200 3400
Wire Wire Line
	8900 3450 9200 3450
Connection ~ 8900 3450
Wire Wire Line
	9000 3400 9000 3450
Connection ~ 9000 3450
Wire Wire Line
	9100 3400 9100 3450
Connection ~ 9100 3450
Wire Wire Line
	8700 2950 8300 2950
Wire Wire Line
	1000 6000 1000 5950
Wire Wire Line
	1550 6000 1550 5950
Wire Wire Line
	2100 6000 2100 5950
Wire Wire Line
	2650 6000 2650 5950
Wire Wire Line
	1000 6750 1000 6700
Wire Wire Line
	1550 6750 1550 6700
Wire Wire Line
	2100 6750 2100 6700
Wire Wire Line
	2650 6750 2650 6700
Wire Wire Line
	1700 7300 4000 7300
Connection ~ 3900 7300
Connection ~ 1800 7300
Connection ~ 1900 7300
Connection ~ 2000 7300
Connection ~ 2100 7300
Connection ~ 2200 7300
Connection ~ 2300 7300
Connection ~ 2400 7300
Connection ~ 2500 7300
Connection ~ 2600 7300
Connection ~ 2700 7300
Connection ~ 2800 7300
Connection ~ 2900 7300
Connection ~ 3000 7300
Connection ~ 3100 7300
Connection ~ 3200 7300
Connection ~ 3300 7300
Connection ~ 3400 7300
Connection ~ 3500 7300
Connection ~ 3600 7300
Connection ~ 3800 7300
Connection ~ 3700 7300
Wire Wire Line
	1800 7400 1800 7300
$Comp
L D_Schottky D3
U 1 1 57CEBDCD
P 2350 2400
F 0 "D3" V 2250 2500 50  0000 C CNN
F 1 "B260A" V 2450 2550 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 2350 2400 50  0001 C CNN
F 3 "" H 2350 2400 50  0000 C CNN
	1    2350 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 57CEBFFC
P 2350 2600
F 0 "#PWR020" H 2350 2350 50  0001 C CNN
F 1 "GND" H 2350 2450 50  0000 C CNN
F 2 "" H 2350 2600 50  0000 C CNN
F 3 "" H 2350 2600 50  0000 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2250 2350 2150
Connection ~ 2350 2150
Wire Wire Line
	2350 2550 2350 2600
Wire Wire Line
	1650 1950 1650 2550
Wire Wire Line
	1550 2050 1650 2050
Wire Wire Line
	1550 2250 1600 2250
Wire Wire Line
	1600 2250 1600 2150
Wire Wire Line
	1550 2150 1800 2150
Connection ~ 1600 2150
$EndSCHEMATC
