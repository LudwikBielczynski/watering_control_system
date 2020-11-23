EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Soil humidity sensor with remote communication"
Date "2020-09-16"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2300 2950 2    50   Input ~ 0
MISO
Text GLabel 2300 3050 2    50   Output ~ 0
SCK
Text GLabel 2300 2850 2    50   Output ~ 0
MOSI
Text GLabel 2300 2650 2    50   Output ~ 0
CSN
Text GLabel 2300 2550 2    50   Output ~ 0
CE
$Comp
L trial:SEN0193 U2
U 1 1 5F33FAC0
P 6325 3250
F 0 "U2" V 6371 2920 50  0000 R CNN
F 1 "SEN0193" V 6280 2920 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 6225 2850 50  0001 C CNN
F 3 "" H 6225 2850 50  0001 C CNN
	1    6325 3250
	0    1    -1   0   
$EndComp
Text GLabel 6525 3150 2    50   Output ~ 0
SEN_A0
Text GLabel 2300 3450 2    50   Input ~ 0
SEN_A0
Text GLabel 2300 4750 2    50   Output ~ 0
Q2_D5
Text GLabel 9200 4600 0    50   Input ~ 0
CE
Text GLabel 9200 4400 0    50   Input ~ 0
CSN
Text GLabel 9200 4100 0    50   Input ~ 0
MOSI
Text GLabel 9200 4300 0    50   Input ~ 0
SCK
Text GLabel 9200 4200 0    50   Output ~ 0
MISO
Text GLabel 6525 3750 0    50   Input ~ 0
Q2_D5
Text GLabel 2300 3650 2    50   Input ~ 0
DIV_A2
Text GLabel 4325 2675 2    50   Output ~ 0
DIV_A2
$Comp
L Device:R R4
U 1 1 5F2E0DD1
P 4075 2925
F 0 "R4" H 4125 2925 50  0000 L CNN
F 1 "10k" V 4075 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4005 2925 50  0001 C CNN
F 3 "~" H 4075 2925 50  0001 C CNN
	1    4075 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F2DE1F5
P 4075 2425
F 0 "R3" H 4125 2425 50  0000 L CNN
F 1 "100k" V 4075 2325 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4005 2425 50  0001 C CNN
F 3 "~" H 4075 2425 50  0001 C CNN
	1    4075 2425
	1    0    0    -1  
$EndComp
Text GLabel 2300 4650 2    50   Output ~ 0
Q1_D4
Wire Wire Line
	6925 3250 6525 3250
NoConn ~ 2300 2750
NoConn ~ 2300 3550
NoConn ~ 2300 3750
NoConn ~ 2300 3850
NoConn ~ 2300 3950
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5F830F0C
P 3775 2175
F 0 "CB1" V 4025 2075 50  0000 L CNN
F 1 "Power_Switch" V 3925 1925 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 3775 2175 50  0001 C CNN
F 3 "~" H 3775 2175 50  0001 C CNN
	1    3775 2175
	0    -1   -1   0   
$EndComp
Text GLabel 9100 2625 0    50   Input ~ 0
Q1_D4
Wire Wire Line
	4075 2575 4075 2675
Wire Wire Line
	4325 2675 4075 2675
Connection ~ 4075 2675
Wire Wire Line
	4075 2675 4075 2775
Wire Wire Line
	4075 2175 4075 2275
$Comp
L power:+3.3V #PWR0102
U 1 1 5F67EEDB
P 9900 2275
F 0 "#PWR0102" H 9900 2125 50  0001 C CNN
F 1 "+3.3V" H 9915 2448 50  0000 C CNN
F 2 "" H 9900 2275 50  0001 C CNN
F 3 "" H 9900 2275 50  0001 C CNN
	1    9900 2275
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5F6B62C2
P 9700 3700
F 0 "#PWR0108" H 9700 3550 50  0001 C CNN
F 1 "+3.3V" H 9715 3873 50  0000 C CNN
F 2 "" H 9700 3700 50  0001 C CNN
F 3 "" H 9700 3700 50  0001 C CNN
	1    9700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F6F5C3C
P 3475 3275
F 0 "#PWR0106" H 3475 3025 50  0001 C CNN
F 1 "GND" H 3480 3102 50  0000 C CNN
F 2 "" H 3475 3275 50  0001 C CNN
F 3 "" H 3475 3275 50  0001 C CNN
	1    3475 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 3175 3475 3275
$Comp
L power:GND #PWR0109
U 1 1 5F6F8FD6
P 1700 5350
F 0 "#PWR0109" H 1700 5100 50  0001 C CNN
F 1 "GND" H 1705 5177 50  0000 C CNN
F 2 "" H 1700 5350 50  0001 C CNN
F 3 "" H 1700 5350 50  0001 C CNN
	1    1700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F6FCC14
P 9700 5075
F 0 "#PWR0110" H 9700 4825 50  0001 C CNN
F 1 "GND" H 9705 4902 50  0000 C CNN
F 2 "" H 9700 5075 50  0001 C CNN
F 3 "" H 9700 5075 50  0001 C CNN
	1    9700 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 2175 3475 2475
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F746E11
P 4075 1925
F 0 "#FLG0103" H 4075 2000 50  0001 C CNN
F 1 "PWR_FLAG" H 4075 2098 50  0000 C CNN
F 2 "" H 4075 1925 50  0001 C CNN
F 3 "~" H 4075 1925 50  0001 C CNN
	1    4075 1925
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F74A67D
P 7125 3350
F 0 "#FLG0104" H 7125 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 7125 3523 50  0000 C CNN
F 2 "" H 7125 3350 50  0001 C CNN
F 3 "~" H 7125 3350 50  0001 C CNN
	1    7125 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4075 3075 4075 3175
Wire Wire Line
	3475 2775 3475 3175
Connection ~ 3475 3175
Connection ~ 4075 2175
Wire Wire Line
	4075 3175 3475 3175
Wire Notes Line
	700  5700 700  1500
Text Notes 9000 3450 0    50   ~ 0
Communication module
Wire Notes Line
	7825 4400 7825 2550
Wire Notes Line
	5525 2550 5525 4400
Text Notes 5550 2650 0    50   ~ 0
Soil humidity sensor
Wire Wire Line
	4075 1925 4075 2175
Text Notes 3200 1625 0    50   ~ 0
Power supply and monitoring
$Comp
L RF:NRF24L01_Breakout U1
U 1 1 5F8AF8DA
P 9700 4400
F 0 "U1" H 9650 4400 50  0000 L CNN
F 1 "NRF24L01_Breakout" V 10100 4050 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 9850 5000 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 9700 4300 50  0001 C CNN
	1    9700 4400
	1    0    0    -1  
$EndComp
NoConn ~ 9200 4700
$Comp
L Device:LED_ALT D2
U 1 1 5F9A1E59
P 7575 3050
F 0 "D2" V 7614 2932 50  0000 R CNN
F 1 "LED_ALT" V 7523 2932 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7575 3050 50  0001 C CNN
F 3 "~" H 7575 3050 50  0001 C CNN
	1    7575 3050
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F706F73
P 6925 4150
F 0 "#PWR0111" H 6925 3900 50  0001 C CNN
F 1 "GND" H 6930 3977 50  0000 C CNN
F 2 "" H 6925 4150 50  0001 C CNN
F 3 "" H 6925 4150 50  0001 C CNN
	1    6925 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7575 3200 7575 3250
Wire Notes Line
	7825 2550 5525 2550
Wire Notes Line
	5525 4400 7825 4400
$Comp
L Device:R R6
U 1 1 5F9BDA04
P 7575 3400
F 0 "R6" H 7625 3400 50  0000 L CNN
F 1 "1k" V 7575 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7505 3400 50  0001 C CNN
F 3 "~" H 7575 3400 50  0001 C CNN
	1    7575 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5F9CC68A
P 10450 3325
F 0 "#PWR01" H 10450 3175 50  0001 C CNN
F 1 "+3.3V" H 10465 3498 50  0000 C CNN
F 2 "" H 10450 3325 50  0001 C CNN
F 3 "" H 10450 3325 50  0001 C CNN
	1    10450 3325
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5F9CC690
P 10450 3525
F 0 "D1" V 10489 3407 50  0000 R CNN
F 1 "LED_ALT" V 10398 3407 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10450 3525 50  0001 C CNN
F 3 "~" H 10450 3525 50  0001 C CNN
	1    10450 3525
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F9CC699
P 10450 3875
F 0 "R5" H 10500 3875 50  0000 L CNN
F 1 "1k" V 10450 3825 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10380 3875 50  0001 C CNN
F 3 "~" H 10450 3875 50  0001 C CNN
	1    10450 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 3350 6925 3350
Wire Wire Line
	7575 3550 6925 3550
Wire Wire Line
	6925 3350 6925 3550
Connection ~ 6925 3350
Wire Wire Line
	6925 3350 6525 3350
Wire Wire Line
	10450 3675 10450 3725
Wire Wire Line
	10450 4025 10450 4075
Wire Wire Line
	6925 2850 6925 3250
Wire Wire Line
	7575 2850 7575 2900
$Comp
L Device:C_Small C6
U 1 1 5F6FCC61
P 8800 3900
F 0 "C6" H 8800 3975 50  0000 L CNN
F 1 "100nF" H 8800 3825 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8800 3900 50  0001 C CNN
F 3 "~" H 8800 3900 50  0001 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5F71A188
P 8600 3900
F 0 "C5" H 8600 3975 50  0000 L CNN
F 1 "10uF" H 8600 3825 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8600 3900 50  0001 C CNN
F 3 "~" H 8600 3900 50  0001 C CNN
	1    8600 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F76E9AB
P 8700 4100
F 0 "#PWR0104" H 8700 3850 50  0001 C CNN
F 1 "GND" H 8705 3927 50  0000 C CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Text Notes 4300 4175 2    50   ~ 0
Debug/Programmator/Reset
Text GLabel 2300 4250 2    50   Input ~ 0
RXD_J1
Text GLabel 2300 4350 2    50   Output ~ 0
TXD_J1
Text GLabel 4150 4975 0    50   Output ~ 0
RXD_J1
Text GLabel 4150 5075 0    50   Input ~ 0
TXD_J1
Wire Wire Line
	1700 5250 1700 5350
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F6F29C1
P 4350 4975
F 0 "J1" H 4430 5017 50  0000 L CNN
F 1 "Conn_01x03" H 4430 4926 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4350 4975 50  0001 C CNN
F 3 "~" H 4350 4975 50  0001 C CNN
	1    4350 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3325 10450 3375
Wire Wire Line
	8600 4050 8700 4050
Wire Wire Line
	8700 4100 8700 4050
Connection ~ 8700 4050
Wire Wire Line
	8700 4050 8800 4050
Wire Wire Line
	6925 4100 6925 4150
Wire Wire Line
	1800 2200 1800 2250
$Comp
L Device:C_Small C8
U 1 1 5F82A0D2
P 1050 2650
F 0 "C8" H 925 2725 50  0000 L CNN
F 1 "100nF" H 800 2575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1050 2650 50  0001 C CNN
F 3 "~" H 1050 2650 50  0001 C CNN
	1    1050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2550 1050 2550
$Comp
L Device:C_Small C9
U 1 1 5F87EBA9
P 2600 2300
F 0 "C9" H 2600 2375 50  0000 L CNN
F 1 "100nF" H 2600 2225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 2300 50  0001 C CNN
F 3 "~" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F88C553
P 2600 2450
F 0 "#PWR05" H 2600 2200 50  0001 C CNN
F 1 "GND" H 2605 2277 50  0000 C CNN
F 2 "" H 2600 2450 50  0001 C CNN
F 3 "" H 2600 2450 50  0001 C CNN
	1    2600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2400 2600 2450
Wire Wire Line
	1800 2200 2600 2200
Connection ~ 1800 2200
$Comp
L Device:L_Small L1
U 1 1 5F8A9F5B
P 1800 2050
F 0 "L1" H 1848 2096 50  0000 L CNN
F 1 "10uH" H 1848 2005 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 1800 2050 50  0001 C CNN
F 3 "~" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1900 1800 1950
Wire Wire Line
	1800 2150 1800 2200
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5F8CA288
P 1800 2250
F 0 "#FLG0105" H 1800 2325 50  0001 C CNN
F 1 "PWR_FLAG" V 1800 2550 50  0000 C CNN
F 2 "" H 1800 2250 50  0001 C CNN
F 3 "~" H 1800 2250 50  0001 C CNN
	1    1800 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F8E6B44
P 6575 3900
F 0 "R8" H 6425 3900 50  0000 L CNN
F 1 "1M" V 6575 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6505 3900 50  0001 C CNN
F 3 "~" H 6575 3900 50  0001 C CNN
	1    6575 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 4050 6575 4100
Wire Wire Line
	6625 3750 6575 3750
Wire Wire Line
	6925 4100 6575 4100
Wire Wire Line
	6925 3950 6925 4100
Connection ~ 6925 4100
Wire Wire Line
	6575 3750 6525 3750
Connection ~ 6575 3750
Wire Wire Line
	8600 3750 8800 3750
Wire Wire Line
	8800 3750 8800 3800
Wire Wire Line
	8600 3750 8600 3800
Wire Wire Line
	8600 4000 8600 4050
Wire Wire Line
	8800 4000 8800 4050
Wire Wire Line
	8800 3750 9700 3750
Connection ~ 8800 3750
Wire Wire Line
	9700 3750 9700 3800
Wire Wire Line
	9700 3700 9700 3750
Connection ~ 9700 3750
$Comp
L power:VCC #PWR0114
U 1 1 5F8A5DC3
P 4425 2125
F 0 "#PWR0114" H 4425 1975 50  0001 C CNN
F 1 "VCC" H 4440 2298 50  0000 C CNN
F 2 "" H 4425 2125 50  0001 C CNN
F 3 "" H 4425 2125 50  0001 C CNN
	1    4425 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 2175 4425 2175
Wire Wire Line
	4425 2175 4425 2125
Text Notes 9100 2025 0    50   ~ 0
Power regulation
$Comp
L power:VCC #PWR0107
U 1 1 5F848456
P 1700 1850
F 0 "#PWR0107" H 1700 1700 50  0001 C CNN
F 1 "VCC" H 1715 2023 50  0000 C CNN
F 2 "" H 1700 1850 50  0001 C CNN
F 3 "" H 1700 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5F851B17
P 6925 2850
F 0 "#PWR0115" H 6925 2700 50  0001 C CNN
F 1 "VCC" H 6940 3023 50  0000 C CNN
F 2 "" H 6925 2850 50  0001 C CNN
F 3 "" H 6925 2850 50  0001 C CNN
	1    6925 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0116
U 1 1 5F856CAD
P 7575 2850
F 0 "#PWR0116" H 7575 2700 50  0001 C CNN
F 1 "VCC" H 7590 3023 50  0000 C CNN
F 2 "" H 7575 2850 50  0001 C CNN
F 3 "" H 7575 2850 50  0001 C CNN
	1    7575 2850
	1    0    0    -1  
$EndComp
$Comp
L soil_humidity_module:DMG6968U Q2
U 1 1 5F8967C3
P 6825 3750
F 0 "Q2" H 7030 3796 50  0000 L CNN
F 1 "DMG6968U" H 7030 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7075 3675 50  0001 L CIN
F 3 "" H 6825 3750 50  0001 L CNN
	1    6825 3750
	1    0    0    -1  
$EndComp
Connection ~ 6925 3550
Connection ~ 1800 2250
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U4
U 1 1 5F62712C
P 1700 3750
F 0 "U4" H 1750 3750 50  0000 R CNN
F 1 "ATmega328P-PU" H 2000 3650 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1700 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1700 3750 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F71FB83
P 3475 2675
F 0 "BT1" V 3225 2675 50  0000 L CNN
F 1 "+3.3-4.2V" V 3325 2525 50  0000 L CNN
F 2 "Connector_AMASS:AMASS_XT30U-F_1x02_P5.0mm_Vertical" V 3475 2735 50  0001 C CNN
F 3 "~" V 3475 2735 50  0001 C CNN
	1    3475 2675
	1    0    0    -1  
$EndComp
NoConn ~ 2300 4850
$Comp
L Device:LED_ALT D3
U 1 1 5FC1BCD8
P 2775 5100
F 0 "D3" V 2814 4982 50  0000 R CNN
F 1 "LED_ALT" V 2723 4982 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2775 5100 50  0001 C CNN
F 3 "~" H 2775 5100 50  0001 C CNN
	1    2775 5100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FC1BCDF
P 2525 4950
F 0 "R10" V 2450 4900 50  0000 L CNN
F 1 "1k" V 2525 4900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2455 4950 50  0001 C CNN
F 3 "~" H 2525 4950 50  0001 C CNN
	1    2525 4950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FC4AD43
P 2775 5325
F 0 "#PWR0118" H 2775 5075 50  0001 C CNN
F 1 "GND" H 2780 5152 50  0000 C CNN
F 2 "" H 2775 5325 50  0001 C CNN
F 3 "" H 2775 5325 50  0001 C CNN
	1    2775 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4950 2375 4950
Wire Wire Line
	2675 4950 2775 4950
Wire Wire Line
	2775 5250 2775 5325
$Comp
L power:GND #PWR0103
U 1 1 5F8ADFB0
P 1050 2800
F 0 "#PWR0103" H 1050 2550 50  0001 C CNN
F 1 "GND" H 1055 2627 50  0000 C CNN
F 2 "" H 1050 2800 50  0001 C CNN
F 3 "" H 1050 2800 50  0001 C CNN
	1    1050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2750 1050 2800
$Comp
L Device:C_Small C11
U 1 1 5F8FAF67
P 1525 1850
F 0 "C11" V 1475 1875 50  0000 L CNN
F 1 "100nF" V 1475 1575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1525 1850 50  0001 C CNN
F 3 "~" H 1525 1850 50  0001 C CNN
	1    1525 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F8FAF6D
P 1425 1900
F 0 "#PWR0113" H 1425 1650 50  0001 C CNN
F 1 "GND" H 1430 1727 50  0000 C CNN
F 2 "" H 1425 1900 50  0001 C CNN
F 3 "" H 1425 1900 50  0001 C CNN
	1    1425 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 1850 1425 1900
Wire Wire Line
	1700 1900 1700 2250
Wire Wire Line
	1800 1900 1700 1900
Wire Wire Line
	1625 1850 1700 1850
Wire Wire Line
	1700 1900 1700 1850
Connection ~ 1700 1900
Connection ~ 1700 1850
NoConn ~ 2300 3150
NoConn ~ 2300 3250
$Comp
L soil_humidity_module:AP7365 U3
U 1 1 5F912462
P 9450 2625
F 0 "U3" H 9575 2950 50  0000 L CNN
F 1 "AP7365" H 9500 2875 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 9700 2825 50  0001 C CNN
F 3 "" H 9700 2825 50  0001 C CNN
	1    9450 2625
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5F8A02AF
P 9450 2275
F 0 "#PWR0112" H 9450 2125 50  0001 C CNN
F 1 "VCC" H 9465 2448 50  0000 C CNN
F 2 "" H 9450 2275 50  0001 C CNN
F 3 "" H 9450 2275 50  0001 C CNN
	1    9450 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2925 9450 3025
$Comp
L power:GND #PWR0105
U 1 1 5F6F1DCB
P 9450 3025
F 0 "#PWR0105" H 9450 2775 50  0001 C CNN
F 1 "GND" H 9455 2852 50  0000 C CNN
F 2 "" H 9450 3025 50  0001 C CNN
F 3 "" H 9450 3025 50  0001 C CNN
	1    9450 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2625 9900 2725
$Comp
L Device:C_Small C2
U 1 1 5F63D266
P 9900 2825
F 0 "C2" H 9900 2900 50  0000 L CNN
F 1 "1uF" H 9900 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9900 2825 50  0001 C CNN
F 3 "~" H 9900 2825 50  0001 C CNN
	1    9900 2825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F63B2EF
P 8675 2425
F 0 "C1" H 8550 2500 50  0000 L CNN
F 1 "1uF" H 8425 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8675 2425 50  0001 C CNN
F 3 "~" H 8675 2425 50  0001 C CNN
	1    8675 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2275 9450 2325
$Comp
L power:GND #PWR07
U 1 1 5F947427
P 8675 2525
F 0 "#PWR07" H 8675 2275 50  0001 C CNN
F 1 "GND" H 8680 2352 50  0000 C CNN
F 2 "" H 8675 2525 50  0001 C CNN
F 3 "" H 8675 2525 50  0001 C CNN
	1    8675 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2625 9900 2625
Connection ~ 9900 2625
$Comp
L power:GND #PWR08
U 1 1 5F9A11AC
P 10450 4075
F 0 "#PWR08" H 10450 3825 50  0001 C CNN
F 1 "GND" H 10455 3902 50  0000 C CNN
F 2 "" H 10450 4075 50  0001 C CNN
F 3 "" H 10450 4075 50  0001 C CNN
	1    10450 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2325 8675 2325
Connection ~ 9450 2325
Wire Wire Line
	9700 5000 9700 5075
Wire Wire Line
	9900 2275 9900 2625
Wire Notes Line
	8400 5300 10900 5300
Wire Notes Line
	8400 1900 10900 1900
Wire Notes Line
	10900 1900 10900 5300
Wire Notes Line
	8400 1900 8400 5300
Text Notes 10275 3075 0    50   ~ 0
Control LED
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FA6BA9C
P 9900 5075
F 0 "#FLG0101" H 9900 5150 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 5248 50  0000 C CNN
F 2 "" H 9900 5075 50  0001 C CNN
F 3 "~" H 9900 5075 50  0001 C CNN
	1    9900 5075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 5075 9700 5075
$Comp
L power:GND #PWR0101
U 1 1 5FAAD2D8
P 9900 3025
F 0 "#PWR0101" H 9900 2775 50  0001 C CNN
F 1 "GND" H 9905 2852 50  0000 C CNN
F 2 "" H 9900 3025 50  0001 C CNN
F 3 "" H 9900 3025 50  0001 C CNN
	1    9900 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2925 9900 3025
Text GLabel 2300 4050 2    50   Input ~ 0
RESET_J1
NoConn ~ 2300 4450
NoConn ~ 2300 4550
$Comp
L Device:R R2
U 1 1 5F753278
P 3400 4625
F 0 "R2" V 3475 4550 50  0000 L CNN
F 1 "10k" V 3400 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 4625 50  0001 C CNN
F 3 "~" H 3400 4625 50  0001 C CNN
	1    3400 4625
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5F85D722
P 3400 4425
F 0 "#PWR0117" H 3400 4275 50  0001 C CNN
F 1 "VCC" H 3415 4598 50  0000 C CNN
F 2 "" H 3400 4425 50  0001 C CNN
F 3 "" H 3400 4425 50  0001 C CNN
	1    3400 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4425 3400 4475
$Comp
L Device:C_Small C7
U 1 1 5F7A3C8E
P 3575 4875
F 0 "C7" V 3625 4900 50  0000 L CNN
F 1 "100nF" V 3625 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3575 4875 50  0001 C CNN
F 3 "~" H 3575 4875 50  0001 C CNN
	1    3575 4875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 4775 3400 4875
Wire Wire Line
	3400 4875 3475 4875
Text GLabel 3325 4875 0    50   Output ~ 0
RESET_J1
Wire Wire Line
	3325 4875 3400 4875
Connection ~ 3400 4875
Text Notes 750  1600 0    50   ~ 0
Microcontroller
$Comp
L Switch:SW_Push SW1
U 1 1 5FBCE364
P 3400 5075
F 0 "SW1" V 3375 5025 50  0000 R CNN
F 1 "Reset button" V 3300 5025 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 3400 5275 50  0001 C CNN
F 3 "~" H 3400 5275 50  0001 C CNN
	1    3400 5075
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC05295
P 3400 5350
F 0 "#PWR02" H 3400 5100 50  0001 C CNN
F 1 "GND" H 3405 5177 50  0000 C CNN
F 2 "" H 3400 5350 50  0001 C CNN
F 3 "" H 3400 5350 50  0001 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5275 3400 5350
Wire Wire Line
	3675 4875 4150 4875
Wire Notes Line
	700  1500 4950 1500
Wire Notes Line
	4950 1500 4950 5700
Wire Notes Line
	700  5700 4950 5700
Connection ~ 9700 5075
$EndSCHEMATC