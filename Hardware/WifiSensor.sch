EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Wifi Sensor"
Date "2022-08-03"
Rev "Rev. B"
Comp "Pawel Warzecha"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  6350 0    50   ~ 0
BME280\n
$Comp
L power:GNDD #PWR06
U 1 1 5DCEFB27
P 1200 5950
F 0 "#PWR06" H 1200 5700 50  0001 C CNN
F 1 "GNDD" H 1204 5795 50  0000 C CNN
F 2 "" H 1200 5950 50  0001 C CNN
F 3 "" H 1200 5950 50  0001 C CNN
	1    1200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5850 1100 5900
Wire Wire Line
	1100 5900 1200 5900
Wire Wire Line
	1200 5900 1200 5950
Wire Wire Line
	1200 5900 1300 5900
Wire Wire Line
	1300 5900 1300 5850
Connection ~ 1200 5900
$Comp
L power:+3.3V #PWR05
U 1 1 5DCF6EA2
P 1200 4550
F 0 "#PWR05" H 1200 4400 50  0001 C CNN
F 1 "+3.3V" H 1215 4723 50  0000 C CNN
F 2 "" H 1200 4550 50  0001 C CNN
F 3 "" H 1200 4550 50  0001 C CNN
	1    1200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4650 1100 4600
Wire Wire Line
	1100 4600 1200 4600
Wire Wire Line
	1200 4600 1200 4550
Wire Wire Line
	1300 4650 1300 4600
Wire Wire Line
	1300 4600 1200 4600
Connection ~ 1200 4600
Wire Notes Line
	5050 4000 5050 1850
$Comp
L power:GNDD #PWR026
U 1 1 5DC31052
P 4350 3150
F 0 "#PWR026" H 4350 2900 50  0001 C CNN
F 1 "GNDD" H 4354 2995 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 JP1
U 1 1 5DC3005B
P 4650 3050
F 0 "JP1" H 4650 3314 50  0000 C CNN
F 1 "Program" H 4650 3223 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4650 3050 50  0001 C CNN
F 3 "" H 4650 3050 50  0000 C CNN
	1    4650 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	4350 3150 4350 3050
Wire Wire Line
	4350 3050 4450 3050
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 62E863A8
P 1050 1100
F 0 "J1" H 1130 1092 50  0000 L CNN
F 1 "Power" H 1130 1001 50  0000 L CNN
F 2 "Connector_Harwin:Harwin_M20-89004xx_1x04_P2.54mm_Horizontal" H 1050 1100 50  0001 C CNN
F 3 "~" H 1050 1100 50  0001 C CNN
	1    1050 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 1000 1350 1000
Wire Wire Line
	1350 1000 1350 850 
Wire Wire Line
	1250 1300 1350 1300
Wire Wire Line
	1350 1300 1350 1500
$Comp
L power:GNDD #PWR0101
U 1 1 62E8BDD2
P 1350 1500
F 0 "#PWR0101" H 1350 1250 50  0001 C CNN
F 1 "GNDD" H 1354 1345 50  0000 C CNN
F 2 "" H 1350 1500 50  0001 C CNN
F 3 "" H 1350 1500 50  0001 C CNN
	1    1350 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0102
U 1 1 62E8C557
P 1350 850
F 0 "#PWR0102" H 1350 700 50  0001 C CNN
F 1 "+BATT" H 1365 1023 50  0000 C CNN
F 2 "" H 1350 850 50  0001 C CNN
F 3 "" H 1350 850 50  0001 C CNN
	1    1350 850 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 1100 1350 1100
Wire Wire Line
	1350 1100 1350 1200
Wire Wire Line
	1350 1200 1250 1200
$Comp
L Device:C_Small C1
U 1 1 62E901DD
P 1950 1150
F 0 "C1" H 1700 1200 50  0000 L CNN
F 1 "100n" H 1650 1100 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1950 1150 50  0001 C CNN
F 3 "" H 1950 1150 50  0000 C CNN
	1    1950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 62E90684
P 2650 1150
F 0 "C3" H 2742 1196 50  0000 L CNN
F 1 "1u" H 2742 1105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2650 1150 50  0001 C CNN
F 3 "" H 2650 1150 50  0000 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1000 1950 1000
Wire Wire Line
	1950 1000 1950 1050
Wire Wire Line
	1950 1000 1850 1000
Wire Wire Line
	1850 1000 1850 950 
Connection ~ 1950 1000
$Comp
L power:+BATT #PWR0103
U 1 1 62E96B2C
P 1850 950
F 0 "#PWR0103" H 1850 800 50  0001 C CNN
F 1 "+BATT" H 1865 1123 50  0000 C CNN
F 2 "" H 1850 950 50  0001 C CNN
F 3 "" H 1850 950 50  0001 C CNN
	1    1850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1000 2650 1000
Wire Wire Line
	2650 1000 2650 1050
Wire Wire Line
	2650 1000 2750 1000
Wire Wire Line
	2750 1000 2750 950 
Connection ~ 2650 1000
$Comp
L power:+3.3V #PWR0104
U 1 1 62E9DF68
P 2750 950
F 0 "#PWR0104" H 2750 800 50  0001 C CNN
F 1 "+3.3V" H 2765 1123 50  0000 C CNN
F 2 "" H 2750 950 50  0001 C CNN
F 3 "" H 2750 950 50  0001 C CNN
	1    2750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1300 2300 1350
Wire Wire Line
	2300 1350 2650 1350
Wire Wire Line
	2650 1350 2650 1250
Wire Wire Line
	2300 1350 1950 1350
Wire Wire Line
	1950 1350 1950 1250
Connection ~ 2300 1350
$Comp
L power:GNDD #PWR0105
U 1 1 62EA4AE4
P 2300 1400
F 0 "#PWR0105" H 2300 1150 50  0001 C CNN
F 1 "GNDD" H 2304 1245 50  0000 C CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1400 2300 1350
Wire Notes Line
	650  6350 650  4150
Wire Notes Line
	650  600  2950 600 
Wire Notes Line
	2950 600  2950 1750
Wire Notes Line
	2950 1750 650  1750
Wire Notes Line
	650  600  650  1750
Text Notes 650  1750 0    50   ~ 0
Power\n
Wire Notes Line
	650  4000 5050 4000
Wire Notes Line
	5050 1850 650  1850
Text GLabel 1500 3050 0    50   Input ~ 0
SCL
Text GLabel 1500 3150 0    50   Input ~ 0
SDA
Wire Wire Line
	1400 2650 1400 2750
Wire Wire Line
	1300 2650 1400 2650
Wire Wire Line
	3850 2350 3850 2650
Wire Wire Line
	3750 2350 3750 2550
Wire Wire Line
	3700 2550 3750 2550
Wire Wire Line
	3950 2450 3950 2350
Wire Wire Line
	3700 2650 3850 2650
$Comp
L power:GNDD #PWR027
U 1 1 5DDDD2B0
P 3950 2450
F 0 "#PWR027" H 3950 2200 50  0001 C CNN
F 1 "GNDD" H 3954 2295 50  0000 C CNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5DDD2193
P 3850 2150
F 0 "J8" V 3816 1962 50  0000 R CNN
F 1 "Tx Rx GND" V 3950 2350 50  0000 R CNN
F 2 "Connector_Harwin:Harwin_M20-89003xx_1x03_P2.54mm_Horizontal" H 3850 2150 50  0001 C CNN
F 3 "~" H 3850 2150 50  0001 C CNN
	1    3850 2150
	0    -1   -1   0   
$EndComp
Text Label 1500 3050 0    50   ~ 0
SCL
Text Label 1500 3150 0    50   ~ 0
SDA
Text Notes 650  4000 0    50   ~ 0
ESP
Wire Notes Line
	650  1850 650  4000
Wire Wire Line
	1850 3250 1900 3250
Wire Wire Line
	1700 3450 1700 3500
Connection ~ 1700 3450
Wire Wire Line
	1850 3450 1850 3250
Wire Wire Line
	1700 3450 1850 3450
Wire Wire Line
	1700 3400 1700 3450
Wire Wire Line
	1500 3150 1900 3150
Wire Wire Line
	1500 3050 1900 3050
Wire Wire Line
	1700 2750 1900 2750
Wire Wire Line
	1700 2450 1700 2750
Connection ~ 1600 2200
Wire Wire Line
	1700 2200 1700 2250
Wire Wire Line
	1600 2200 1700 2200
Wire Wire Line
	1450 2200 1600 2200
Wire Wire Line
	1450 2250 1450 2200
$Comp
L Device:R_Small R4
U 1 1 5DC4A9B0
P 1700 2350
F 0 "R4" H 1759 2396 50  0000 L CNN
F 1 "4k7" H 1759 2305 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0000 C CNN
	1    1700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1900 2550
Wire Wire Line
	1450 2550 1300 2550
Connection ~ 1450 2550
Wire Wire Line
	4450 2950 3700 2950
Wire Wire Line
	4000 3150 4000 3200
Wire Wire Line
	3700 3150 4000 3150
Connection ~ 3900 3450
Wire Wire Line
	3800 3250 3800 3450
Wire Wire Line
	3900 3450 3800 3450
Wire Wire Line
	4000 3450 4000 3400
Wire Wire Line
	3900 3450 4000 3450
Wire Wire Line
	3900 3500 3900 3450
$Comp
L Device:R_Small R5
U 1 1 5DC4165E
P 4000 3300
F 0 "R5" H 4059 3346 50  0000 L CNN
F 1 "4k7" H 4059 3255 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0000 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3250 3700 3250
Wire Wire Line
	1700 3750 1700 3700
$Comp
L power:+3.3V #PWR023
U 1 1 5DC325F7
P 1700 3400
F 0 "#PWR023" H 1700 3250 50  0001 C CNN
F 1 "+3.3V" H 1715 3573 50  0000 C CNN
F 2 "" H 1700 3400 50  0001 C CNN
F 3 "" H 1700 3400 50  0001 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2200 1600 2150
$Comp
L power:+3.3V #PWR022
U 1 1 5DC321BE
P 1600 2150
F 0 "#PWR022" H 1600 2000 50  0001 C CNN
F 1 "+3.3V" H 1615 2323 50  0000 C CNN
F 2 "" H 1600 2150 50  0001 C CNN
F 3 "" H 1600 2150 50  0001 C CNN
	1    1600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 5DC310A3
P 3900 3500
F 0 "#PWR025" H 3900 3250 50  0001 C CNN
F 1 "GNDD" H 3904 3345 50  0000 C CNN
F 2 "" H 3900 3500 50  0001 C CNN
F 3 "" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR024
U 1 1 5DC3107E
P 1700 3750
F 0 "#PWR024" H 1700 3500 50  0001 C CNN
F 1 "GNDD" H 1704 3595 50  0000 C CNN
F 2 "" H 1700 3750 50  0001 C CNN
F 3 "" H 1700 3750 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR019
U 1 1 5DC31016
P 1400 2750
F 0 "#PWR019" H 1400 2500 50  0001 C CNN
F 1 "GNDD" H 1404 2595 50  0000 C CNN
F 2 "" H 1400 2750 50  0001 C CNN
F 3 "" H 1400 2750 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5DC30E54
P 1700 3600
F 0 "C6" H 1792 3646 50  0000 L CNN
F 1 "100n" H 1792 3555 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0000 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1450 2450
$Comp
L Device:R_Small R3
U 1 1 5DC30982
P 1450 2350
F 0 "R3" H 1509 2396 50  0000 L CNN
F 1 "4k7" H 1509 2305 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1450 2350 50  0001 C CNN
F 3 "" H 1450 2350 50  0000 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 SW1
U 1 1 5DC2FF25
P 1100 2650
F 0 "SW1" H 1100 2935 50  0000 C CNN
F 1 "Reset" H 1100 2844 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0001 C CNN
	1    1100 2650
	-1   0    0    1   
$EndComp
$Comp
L ESP8266:ESP-12E U4
U 1 1 5DC2FDAD
P 2800 2850
F 0 "U4" H 2800 3615 50  0000 C CNN
F 1 "ESP-12E" H 2800 3524 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 2800 2850 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 2800 2850 50  0001 C CNN
	1    2800 2850
	1    0    0    -1  
$EndComp
Wire Notes Line
	2700 4150 2700 6350
Wire Wire Line
	2100 4650 2250 4650
Connection ~ 2100 4650
Wire Wire Line
	2100 4550 2100 4650
$Comp
L power:+3.3V #PWR0106
U 1 1 62EB75D4
P 2100 4550
F 0 "#PWR0106" H 2100 4400 50  0001 C CNN
F 1 "+3.3V" H 2115 4723 50  0000 C CNN
F 2 "" H 2100 4550 50  0001 C CNN
F 3 "" H 2100 4550 50  0001 C CNN
	1    2100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4550 1850 4950
Wire Wire Line
	1950 4650 2100 4650
Wire Wire Line
	2250 5350 2350 5350
Connection ~ 2250 5350
Wire Wire Line
	2250 4900 2250 5350
Wire Wire Line
	1950 5150 2350 5150
Wire Wire Line
	1800 5350 2250 5350
Connection ~ 1950 5150
Text GLabel 2350 5150 2    50   Input ~ 0
SCL
Text GLabel 2350 5350 2    50   Input ~ 0
SDA
Connection ~ 2100 6050
Wire Wire Line
	2100 6050 1800 6050
Wire Wire Line
	2100 6050 2400 6050
Connection ~ 2100 5750
Wire Wire Line
	1800 5750 2100 5750
Wire Wire Line
	2100 5750 2400 5750
$Comp
L Device:C_Small C5
U 1 1 5DD12D0C
P 2400 5900
F 0 "C5" H 2492 5946 50  0000 L CNN
F 1 "100n" H 2492 5855 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2400 5900 50  0001 C CNN
F 3 "" H 2400 5900 50  0000 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5750 2400 5800
Wire Wire Line
	2400 6050 2400 6000
$Comp
L Device:R_Small R1
U 1 1 5DCEF7E9
P 1950 4800
F 0 "R1" H 2009 4846 50  0000 L CNN
F 1 "4k7" H 2009 4755 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1950 4800 50  0001 C CNN
F 3 "" H 1950 4800 50  0000 C CNN
	1    1950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4900 1950 5150
Wire Wire Line
	1800 5150 1950 5150
Connection ~ 1850 4950
Wire Notes Line
	2700 6350 650  6350
Wire Wire Line
	1800 6050 1800 6000
Wire Wire Line
	2100 6100 2100 6050
Wire Wire Line
	2100 5750 2100 5700
Wire Wire Line
	1800 5800 1800 5750
$Comp
L power:+3.3V #PWR015
U 1 1 5DD34AB6
P 2100 5700
F 0 "#PWR015" H 2100 5550 50  0001 C CNN
F 1 "+3.3V" H 2115 5873 50  0000 C CNN
F 2 "" H 2100 5700 50  0001 C CNN
F 3 "" H 2100 5700 50  0001 C CNN
	1    2100 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 5DD34A53
P 2100 6100
F 0 "#PWR016" H 2100 5850 50  0001 C CNN
F 1 "GNDD" H 2104 5945 50  0000 C CNN
F 2 "" H 2100 6100 50  0001 C CNN
F 3 "" H 2100 6100 50  0001 C CNN
	1    2100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4650 2250 4700
Wire Wire Line
	1950 4700 1950 4650
$Comp
L power:+3.3V #PWR014
U 1 1 5DD1D2F5
P 1850 4550
F 0 "#PWR014" H 1850 4400 50  0001 C CNN
F 1 "+3.3V" H 1865 4723 50  0000 C CNN
F 2 "" H 1850 4550 50  0001 C CNN
F 3 "" H 1850 4550 50  0001 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DD12AFC
P 1800 5900
F 0 "C2" H 1892 5946 50  0000 L CNN
F 1 "100n" H 1892 5855 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1800 5900 50  0001 C CNN
F 3 "" H 1800 5900 50  0000 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5550 1850 4950
Wire Wire Line
	1800 5550 1850 5550
Wire Wire Line
	1800 4950 1850 4950
Wire Notes Line
	650  4150 2700 4150
$Comp
L Device:R_Small R2
U 1 1 5DCEF8B5
P 2250 4800
F 0 "R2" H 2309 4846 50  0000 L CNN
F 1 "4k7" H 2309 4755 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2250 4800 50  0001 C CNN
F 3 "" H 2250 4800 50  0000 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
$Comp
L Sensor:BME280 U1
U 1 1 5DCC7E9D
P 1200 5250
F 0 "U1" H 900 5700 50  0000 R CNN
F 1 "BME280" H 1600 4800 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 1200 5050 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-11.pdf" H 1200 5050 50  0001 C CNN
	1    1200 5250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1129-3.3_SOT223 U2
U 1 1 62F9462A
P 2300 1000
F 0 "U2" H 2300 1242 50  0000 C CNN
F 1 "LT1129-3.3_SOT223" H 2300 1151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2300 1225 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/112935ff.pdf" H 2300 950 50  0001 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
