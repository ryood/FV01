EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "FV01"
Date "2022-04-11"
Rev "Ver. 1.0"
Comp "PNPN Manufactory"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C3
U 1 1 612C8B81
P 5150 2200
F 0 "C3" V 4898 2200 50  0000 C CNN
F 1 "0.1u" V 4989 2200 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 5188 2050 50  0001 C CNN
F 3 "~" H 5150 2200 50  0001 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 612C98A9
P 5500 2200
F 0 "R3" V 5293 2200 50  0000 C CNN
F 1 "330k" V 5384 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 2200 50  0001 C CNN
F 3 "~" H 5500 2200 50  0001 C CNN
	1    5500 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 612CF1EF
P 6250 1350
F 0 "R1" V 6043 1350 50  0000 C CNN
F 1 "100k" V 6134 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 1350 50  0001 C CNN
F 3 "~" H 6250 1350 50  0001 C CNN
	1    6250 1350
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 612CFA5E
P 6200 2100
F 0 "U1" H 6158 2146 50  0001 L CNN
F 1 "TL072" H 6158 2055 50  0001 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6200 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 2100 50  0001 C CNN
	3    6200 2100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 612CBDB1
P 8450 2300
F 0 "U1" H 8450 2667 50  0000 C CNN
F 1 "TL072" H 8450 2576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8450 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8450 2300 50  0001 C CNN
	2    8450 2300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 612CA33C
P 6200 2100
F 0 "U1" H 5850 2450 50  0000 C CNN
F 1 "TL072" H 5900 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6200 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 2100 50  0001 C CNN
	1    6200 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 612D3B2C
P 6300 1750
F 0 "C2" V 6048 1750 50  0000 C CNN
F 1 "0.1u" V 6139 1750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6338 1600 50  0001 C CNN
F 3 "~" H 6300 1750 50  0001 C CNN
	1    6300 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 612D3DC9
P 6300 2450
F 0 "C4" V 6048 2450 50  0000 C CNN
F 1 "0.1u" V 6139 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6338 2300 50  0001 C CNN
F 3 "~" H 6300 2450 50  0001 C CNN
	1    6300 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 612D6712
P 7700 2400
F 0 "R5" V 7493 2400 50  0000 C CNN
F 1 "100k(C&T)" V 7584 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 2400 50  0001 C CNN
F 3 "~" H 7700 2400 50  0001 C CNN
	1    7700 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 612D848A
P 9000 2300
F 0 "R4" V 8793 2300 50  0000 C CNN
F 1 "1k" V 8884 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 2300 50  0001 C CNN
F 3 "~" H 9000 2300 50  0001 C CNN
	1    9000 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2050 4800 2000
$Comp
L power:GND #PWR0101
U 1 1 6130A53E
P 4400 2400
F 0 "#PWR0101" H 4400 2150 50  0001 C CNN
F 1 "GND" H 4405 2227 50  0000 C CNN
F 2 "" H 4400 2400 50  0001 C CNN
F 3 "" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6130B17E
P 4800 2400
F 0 "#PWR0102" H 4800 2150 50  0001 C CNN
F 1 "GND" H 4805 2227 50  0000 C CNN
F 2 "" H 4800 2400 50  0001 C CNN
F 3 "" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2100 4400 2400
Wire Wire Line
	4800 2400 4800 2350
Wire Wire Line
	4950 2200 5000 2200
Wire Wire Line
	5300 2200 5350 2200
Wire Wire Line
	5650 2200 5750 2200
$Comp
L power:+12V #PWR0103
U 1 1 61310C5A
P 6100 1700
F 0 "#PWR0103" H 6100 1550 50  0001 C CNN
F 1 "+12V" H 6115 1873 50  0000 C CNN
F 2 "" H 6100 1700 50  0001 C CNN
F 3 "" H 6100 1700 50  0001 C CNN
	1    6100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0104
U 1 1 613112FC
P 6100 2500
F 0 "#PWR0104" H 6100 2600 50  0001 C CNN
F 1 "-12V" H 6115 2673 50  0000 C CNN
F 2 "" H 6100 2500 50  0001 C CNN
F 3 "" H 6100 2500 50  0001 C CNN
	1    6100 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 2500 6100 2450
Wire Wire Line
	6150 2450 6100 2450
Connection ~ 6100 2450
Wire Wire Line
	6100 2450 6100 2400
Wire Wire Line
	6100 1700 6100 1750
Wire Wire Line
	6150 1750 6100 1750
Connection ~ 6100 1750
Wire Wire Line
	6100 1750 6100 1800
Wire Wire Line
	5750 1350 6100 1350
Connection ~ 5750 2200
Wire Wire Line
	5750 2200 5900 2200
Wire Wire Line
	6400 1350 6700 1350
Wire Wire Line
	6700 2100 6500 2100
$Comp
L power:GND #PWR0105
U 1 1 6131FF95
P 6450 1750
F 0 "#PWR0105" H 6450 1500 50  0001 C CNN
F 1 "GND" V 6350 1700 50  0000 R CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "" H 6450 1750 50  0001 C CNN
	1    6450 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6132042C
P 6450 2450
F 0 "#PWR0106" H 6450 2200 50  0001 C CNN
F 1 "GND" V 6350 2400 50  0000 R CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2500
$Comp
L power:GND #PWR0107
U 1 1 61328FCF
P 5850 2500
F 0 "#PWR0107" H 5850 2250 50  0001 C CNN
F 1 "GND" H 5855 2327 50  0000 C CNN
F 2 "" H 5850 2500 50  0001 C CNN
F 3 "" H 5850 2500 50  0001 C CNN
	1    5850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2200 8100 2200
Wire Wire Line
	8100 2200 8100 2600
$Comp
L power:GND #PWR0108
U 1 1 6133A762
P 8100 2600
F 0 "#PWR0108" H 8100 2350 50  0001 C CNN
F 1 "GND" H 8105 2427 50  0000 C CNN
F 2 "" H 8100 2600 50  0001 C CNN
F 3 "" H 8100 2600 50  0001 C CNN
	1    8100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1800 8800 2300
Wire Wire Line
	8800 2300 8750 2300
Wire Wire Line
	9200 2300 9150 2300
Wire Wire Line
	8850 2300 8800 2300
Connection ~ 8800 2300
$Comp
L power:GND #PWR0109
U 1 1 6135C623
P 9300 2450
F 0 "#PWR0109" H 9300 2200 50  0001 C CNN
F 1 "GND" H 9305 2277 50  0000 C CNN
F 2 "" H 9300 2450 50  0001 C CNN
F 3 "" H 9300 2450 50  0001 C CNN
	1    9300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2200 9300 2450
Wire Wire Line
	7300 2250 7300 2100
Wire Wire Line
	7300 2100 6850 2100
Connection ~ 6700 2100
$Comp
L Mechanical:MountingHole H1
U 1 1 613AA65F
P 5300 5950
F 0 "H1" H 5400 5996 50  0000 L CNN
F 1 "MountingHole" H 5400 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5300 5950 50  0001 C CNN
F 3 "~" H 5300 5950 50  0001 C CNN
	1    5300 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 613AA9B1
P 5300 6200
F 0 "H2" H 5400 6246 50  0000 L CNN
F 1 "MountingHole" H 5400 6155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5300 6200 50  0001 C CNN
F 3 "~" H 5300 6200 50  0001 C CNN
	1    5300 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 613AAB65
P 5300 6450
F 0 "H3" H 5400 6496 50  0000 L CNN
F 1 "MountingHole" H 5400 6405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5300 6450 50  0001 C CNN
F 3 "~" H 5300 6450 50  0001 C CNN
	1    5300 6450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 613AACEE
P 5300 6700
F 0 "H4" H 5400 6746 50  0000 L CNN
F 1 "MountingHole" H 5400 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5300 6700 50  0001 C CNN
F 3 "~" H 5300 6700 50  0001 C CNN
	1    5300 6700
	1    0    0    -1  
$EndComp
$Sheet
S 7800 3150 1100 700 
U 62369DA4
F0 "FV-1" 50
F1 "FV-1.sch" 50
F2 "RFXIN" I L 7800 3350 50 
F3 "LFXIN" I L 7800 3600 50 
F4 "LFXOUT" O R 8900 3350 50 
F5 "RFXOUT" O R 8900 3600 50 
$EndSheet
Wire Wire Line
	1450 4600 1950 4600
$Comp
L power:-12V #PWR0110
U 1 1 6241D738
P 1450 4650
F 0 "#PWR0110" H 1450 4750 50  0001 C CNN
F 1 "-12V" H 1465 4823 50  0000 C CNN
F 2 "" H 1450 4650 50  0001 C CNN
F 3 "" H 1450 4650 50  0001 C CNN
	1    1450 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 4650 1450 4600
Connection ~ 6850 2100
Wire Wire Line
	6700 2100 6850 2100
$Comp
L Device:R_POT RV3
U 1 1 62617704
P 4800 4650
F 0 "RV3" H 4731 4604 50  0000 R CNN
F 1 "50k/A" H 4731 4695 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4800 4650 50  0001 C CNN
F 3 "~" H 4800 4650 50  0001 C CNN
	1    4800 4650
	1    0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 6261770E
P 5150 4650
F 0 "C9" V 4898 4650 50  0000 C CNN
F 1 "0.1u" V 4989 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 5188 4500 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 62617718
P 5500 4650
F 0 "R10" V 5293 4650 50  0000 C CNN
F 1 "330k" V 5384 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 4650 50  0001 C CNN
F 3 "~" H 5500 4650 50  0001 C CNN
	1    5500 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 62617722
P 6250 3800
F 0 "R7" V 6043 3800 50  0000 C CNN
F 1 "100k" V 6134 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 3800 50  0001 C CNN
F 3 "~" H 6250 3800 50  0001 C CNN
	1    6250 3800
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 6261772C
P 6200 4550
F 0 "U2" H 6158 4596 50  0001 L CNN
F 1 "TL072" H 6158 4505 50  0001 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6200 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 4550 50  0001 C CNN
	3    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 1 1 62617740
P 6200 4550
F 0 "U2" H 5850 4900 50  0000 C CNN
F 1 "TL072" H 5900 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6200 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6261774A
P 6300 4200
F 0 "C8" V 6048 4200 50  0000 C CNN
F 1 "0.1u" V 6139 4200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6338 4050 50  0001 C CNN
F 3 "~" H 6300 4200 50  0001 C CNN
	1    6300 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 62617754
P 6300 4900
F 0 "C10" V 6048 4900 50  0000 C CNN
F 1 "0.1u" V 6139 4900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6338 4750 50  0001 C CNN
F 3 "~" H 6300 4900 50  0001 C CNN
	1    6300 4900
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6261775E
P 6250 3450
F 0 "C5" V 5998 3450 50  0000 C CNN
F 1 "10p" V 6089 3450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 62617768
P 7300 4850
F 0 "RV4" H 7230 4804 50  0000 R CNN
F 1 "50k/B" H 7230 4895 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09Y11_Single_Horizontal" H 7300 4850 50  0001 C CNN
F 3 "~" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4800 4450
$Comp
L power:GND #PWR0111
U 1 1 6261779C
P 4200 2400
F 0 "#PWR0111" H 4200 2150 50  0001 C CNN
F 1 "GND" H 4205 2227 50  0000 C CNN
F 2 "" H 4200 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 626177A6
P 4800 4850
F 0 "#PWR0112" H 4800 4600 50  0001 C CNN
F 1 "GND" H 4805 4677 50  0000 C CNN
F 2 "" H 4800 4850 50  0001 C CNN
F 3 "" H 4800 4850 50  0001 C CNN
	1    4800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2300 4200 2400
Wire Wire Line
	4800 4850 4800 4800
Wire Wire Line
	4950 4650 5000 4650
Wire Wire Line
	5300 4650 5350 4650
Wire Wire Line
	5650 4650 5750 4650
$Comp
L power:+12V #PWR0113
U 1 1 626177B6
P 6100 4150
F 0 "#PWR0113" H 6100 4000 50  0001 C CNN
F 1 "+12V" H 6115 4323 50  0000 C CNN
F 2 "" H 6100 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0114
U 1 1 626177C0
P 6100 4950
F 0 "#PWR0114" H 6100 5050 50  0001 C CNN
F 1 "-12V" H 6115 5123 50  0000 C CNN
F 2 "" H 6100 4950 50  0001 C CNN
F 3 "" H 6100 4950 50  0001 C CNN
	1    6100 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4950 6100 4900
Wire Wire Line
	6150 4900 6100 4900
Connection ~ 6100 4900
Wire Wire Line
	6100 4900 6100 4850
Wire Wire Line
	6100 4150 6100 4200
Wire Wire Line
	6150 4200 6100 4200
Connection ~ 6100 4200
Wire Wire Line
	6100 4200 6100 4250
Wire Wire Line
	5750 3800 5750 4650
Wire Wire Line
	5750 3800 6100 3800
Connection ~ 5750 4650
Wire Wire Line
	5750 4650 5900 4650
Wire Wire Line
	6400 3800 6700 3800
Wire Wire Line
	6700 3800 6700 4550
Wire Wire Line
	6700 4550 6500 4550
Wire Wire Line
	6100 3450 5750 3450
Wire Wire Line
	5750 3450 5750 3800
Connection ~ 5750 3800
Wire Wire Line
	6400 3450 6700 3450
Wire Wire Line
	6700 3450 6700 3800
Connection ~ 6700 3800
$Comp
L power:GND #PWR0115
U 1 1 626177DF
P 6450 4200
F 0 "#PWR0115" H 6450 3950 50  0001 C CNN
F 1 "GND" V 6350 4150 50  0000 R CNN
F 2 "" H 6450 4200 50  0001 C CNN
F 3 "" H 6450 4200 50  0001 C CNN
	1    6450 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 626177E9
P 6450 4900
F 0 "#PWR0116" H 6450 4650 50  0001 C CNN
F 1 "GND" V 6350 4850 50  0000 R CNN
F 2 "" H 6450 4900 50  0001 C CNN
F 3 "" H 6450 4900 50  0001 C CNN
	1    6450 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4450 5850 4450
Wire Wire Line
	5850 4450 5850 4950
$Comp
L power:GND #PWR0117
U 1 1 626177F5
P 5850 4950
F 0 "#PWR0117" H 5850 4700 50  0001 C CNN
F 1 "GND" H 5855 4777 50  0000 C CNN
F 2 "" H 5850 4950 50  0001 C CNN
F 3 "" H 5850 4950 50  0001 C CNN
	1    5850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4700 7300 4550
Connection ~ 6700 4550
Wire Wire Line
	6850 2100 6850 3350
Wire Wire Line
	7300 2900 9800 2900
Wire Wire Line
	7300 2550 7300 2900
Wire Wire Line
	6700 4550 6850 4550
Wire Wire Line
	6850 4550 6850 3900
Connection ~ 6850 4550
Wire Wire Line
	6850 4550 7300 4550
Connection ~ 1450 4600
Wire Wire Line
	3250 6400 3250 6500
$Comp
L power:GND #PWR0120
U 1 1 62471915
P 3250 6500
F 0 "#PWR0120" H 3250 6250 50  0001 C CNN
F 1 "GND" H 3255 6327 50  0000 C CNN
F 2 "" H 3250 6500 50  0001 C CNN
F 3 "" H 3250 6500 50  0001 C CNN
	1    3250 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6246361E
P 3250 5950
F 0 "R13" H 3320 5996 50  0000 L CNN
F 1 "1k" H 3320 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 5950 50  0001 C CNN
F 3 "~" H 3250 5950 50  0001 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 62463614
P 3250 6250
F 0 "D3" V 3289 6132 50  0000 R CNN
F 1 "LED" V 3198 6132 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3250 6250 50  0001 C CNN
F 3 "~" H 3250 6250 50  0001 C CNN
	1    3250 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 623F9192
P 1950 3400
F 0 "R6" H 2020 3446 50  0000 L CNN
F 1 "4.7k" H 2020 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 3400 50  0001 C CNN
F 3 "~" H 1950 3400 50  0001 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 623FA2F6
P 1950 3700
F 0 "D1" V 1989 3582 50  0000 R CNN
F 1 "LED" V 1898 3582 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 1950 3700 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1950 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 3850 1950 3900
Connection ~ 1900 5700
$Comp
L power:+3V3 #PWR0121
U 1 1 62446BC1
P 2800 5550
F 0 "#PWR0121" H 2800 5400 50  0001 C CNN
F 1 "+3V3" H 2815 5723 50  0000 C CNN
F 2 "" H 2800 5550 50  0001 C CNN
F 3 "" H 2800 5550 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 62446534
P 1450 5550
F 0 "#PWR0122" H 1450 5400 50  0001 C CNN
F 1 "+5V" H 1465 5723 50  0000 C CNN
F 2 "" H 1450 5550 50  0001 C CNN
F 3 "" H 1450 5550 50  0001 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6500 2800 6250
$Comp
L power:GND #PWR0123
U 1 1 6243D792
P 2800 6500
F 0 "#PWR0123" H 2800 6250 50  0001 C CNN
F 1 "GND" H 2805 6327 50  0000 C CNN
F 2 "" H 2800 6500 50  0001 C CNN
F 3 "" H 2800 6500 50  0001 C CNN
	1    2800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 6243CB26
P 2800 6100
F 0 "C13" H 2918 6146 50  0000 L CNN
F 1 "100u" H 2918 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2838 5950 50  0001 C CNN
F 3 "~" H 2800 6100 50  0001 C CNN
	1    2800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6000 2350 6500
$Comp
L power:GND #PWR0124
U 1 1 6243756E
P 2350 6500
F 0 "#PWR0124" H 2350 6250 50  0001 C CNN
F 1 "GND" H 2355 6327 50  0000 C CNN
F 2 "" H 2350 6500 50  0001 C CNN
F 3 "" H 2350 6500 50  0001 C CNN
	1    2350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6500 1900 6250
Wire Wire Line
	1900 5700 1900 5950
Wire Wire Line
	2050 5700 1900 5700
$Comp
L power:GND #PWR0125
U 1 1 6242F0B0
P 1900 6500
F 0 "#PWR0125" H 1900 6250 50  0001 C CNN
F 1 "GND" H 1905 6327 50  0000 C CNN
F 2 "" H 1900 6500 50  0001 C CNN
F 3 "" H 1900 6500 50  0001 C CNN
	1    1900 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6242A490
P 1900 6100
F 0 "C12" H 2015 6146 50  0000 L CNN
F 1 "0.1u" H 2015 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1938 5950 50  0001 C CNN
F 3 "~" H 1900 6100 50  0001 C CNN
	1    1900 6100
	1    0    0    -1  
$EndComp
$Comp
L My_Device:TA48M033F U3
U 1 1 6242933A
P 2350 5750
F 0 "U3" H 2350 6042 50  0000 C CNN
F 1 "TA48M033F" H 2350 5951 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 2350 5950 50  0001 C CNN
F 3 "" H 2350 5950 50  0001 C CNN
	1    2350 5750
	1    0    0    -1  
$EndComp
Connection ~ 1450 3200
Wire Wire Line
	1450 3150 1450 3200
$Comp
L power:+12V #PWR0126
U 1 1 6241D4E0
P 1450 3150
F 0 "#PWR0126" H 1450 3000 50  0001 C CNN
F 1 "+12V" H 1465 3323 50  0000 C CNN
F 2 "" H 1450 3150 50  0001 C CNN
F 3 "" H 1450 3150 50  0001 C CNN
	1    1450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3900 1950 3900
Wire Wire Line
	2400 4300 2400 3900
$Comp
L power:GND #PWR0127
U 1 1 62419540
P 2400 4300
F 0 "#PWR0127" H 2400 4050 50  0001 C CNN
F 1 "GND" H 2405 4127 50  0000 C CNN
F 2 "" H 2400 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0001 C CNN
	1    2400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4350 1450 4600
Wire Wire Line
	1950 4600 1950 4550
Wire Wire Line
	1450 3200 1450 3450
Wire Wire Line
	1950 3200 1950 3250
Wire Wire Line
	1450 3200 1950 3200
Wire Wire Line
	1450 3900 1450 4050
Connection ~ 1450 3900
Wire Wire Line
	1950 3900 1950 3950
Connection ~ 1950 3900
Wire Wire Line
	1950 3900 1450 3900
$Comp
L Device:LED D2
U 1 1 623FE704
P 1950 4100
F 0 "D2" V 1989 3982 50  0000 R CNN
F 1 "LED" V 1898 3982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 1950 4100 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 623F9DAD
P 1950 4400
F 0 "R9" H 2020 4446 50  0000 L CNN
F 1 "4.7k" H 2020 4355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 4400 50  0001 C CNN
F 3 "~" H 1950 4400 50  0001 C CNN
	1    1950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3750 1450 3900
Connection ~ 4300 6750
Wire Wire Line
	4300 6750 4300 6900
Wire Wire Line
	4300 6650 4300 6750
$Comp
L power:GND #PWR0128
U 1 1 623EE30D
P 4300 6900
F 0 "#PWR0128" H 4300 6650 50  0001 C CNN
F 1 "GND" H 4305 6727 50  0000 C CNN
F 2 "" H 4300 6900 50  0001 C CNN
F 3 "" H 4300 6900 50  0001 C CNN
	1    4300 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 623EDDF9
P 4500 6650
F 0 "J7" H 4580 6642 50  0000 L CNN
F 1 "TP_GND" H 4580 6551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4500 6650 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 623E4109
P 3050 1550
F 0 "#PWR0129" H 3050 1400 50  0001 C CNN
F 1 "+5V" H 3065 1723 50  0000 C CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1550 3050 1700
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 623E0620
P 3050 1700
F 0 "#FLG0102" H 3050 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 3050 1873 50  0000 C CNN
F 2 "" H 3050 1700 50  0001 C CNN
F 3 "~" H 3050 1700 50  0001 C CNN
	1    3050 1700
	-1   0    0    1   
$EndComp
Connection ~ 1900 2250
Wire Wire Line
	2050 2250 2050 2300
Wire Wire Line
	1900 2250 2050 2250
Wire Wire Line
	2250 2100 2250 2300
Wire Wire Line
	1900 2100 2250 2100
Connection ~ 1900 1850
Wire Wire Line
	2250 1850 2250 1550
Wire Wire Line
	1900 1850 2250 1850
Connection ~ 1900 1750
Wire Wire Line
	2050 1750 2050 1550
Wire Wire Line
	1900 1750 2050 1750
$Comp
L power:+5V #PWR0130
U 1 1 623A19B8
P 2050 1550
F 0 "#PWR0130" H 2050 1400 50  0001 C CNN
F 1 "+5V" H 2065 1723 50  0000 C CNN
F 2 "" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1850 1600
NoConn ~ 1850 1500
NoConn ~ 1350 1600
NoConn ~ 1350 1500
Wire Wire Line
	1900 2200 1850 2200
Wire Wire Line
	1900 2250 1900 2200
Wire Wire Line
	1300 2250 1900 2250
Wire Wire Line
	1300 2200 1300 2250
Wire Wire Line
	1350 2200 1300 2200
Connection ~ 1900 2100
Connection ~ 1300 2100
Wire Wire Line
	1900 2150 1900 2100
Wire Wire Line
	1300 2150 1900 2150
Wire Wire Line
	1300 2100 1300 2150
Wire Wire Line
	1900 2000 1900 2100
Connection ~ 1900 2000
Wire Wire Line
	1850 2000 1900 2000
Wire Wire Line
	1900 2100 1850 2100
Wire Wire Line
	1900 1900 1900 2000
Wire Wire Line
	1850 1900 1900 1900
Wire Wire Line
	1300 2000 1300 2100
Connection ~ 1300 2000
Wire Wire Line
	1350 2000 1300 2000
Wire Wire Line
	1300 2100 1350 2100
Wire Wire Line
	1300 1900 1300 2000
Wire Wire Line
	1350 1900 1300 1900
Wire Wire Line
	1900 1800 1850 1800
Wire Wire Line
	1900 1850 1900 1800
Wire Wire Line
	1300 1850 1900 1850
Wire Wire Line
	1300 1800 1300 1850
Wire Wire Line
	1350 1800 1300 1800
Wire Wire Line
	1900 1700 1850 1700
Wire Wire Line
	1900 1750 1900 1700
Wire Wire Line
	1300 1750 1900 1750
Wire Wire Line
	1300 1700 1300 1750
Wire Wire Line
	1350 1700 1300 1700
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 62370E5A
P 1650 1900
F 0 "J1" H 1700 1275 50  0000 C CNN
F 1 "ERK_PWR" H 1700 1366 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 1650 1900 50  0001 C CNN
F 3 "~" H 1650 1900 50  0001 C CNN
	1    1650 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 612DA70F
P 2250 2300
F 0 "#PWR0131" H 2250 2050 50  0001 C CNN
F 1 "GND" H 2255 2127 50  0000 C CNN
F 2 "" H 2250 2300 50  0001 C CNN
F 3 "" H 2250 2300 50  0001 C CNN
	1    2250 2300
	1    0    0    -1  
$EndComp
Connection ~ 4300 6050
Wire Wire Line
	4300 6050 4300 6200
Wire Wire Line
	4300 5950 4300 6050
$Comp
L power:GND #PWR0132
U 1 1 6139A183
P 4300 6200
F 0 "#PWR0132" H 4300 5950 50  0001 C CNN
F 1 "GND" H 4305 6027 50  0000 C CNN
F 2 "" H 4300 6200 50  0001 C CNN
F 3 "" H 4300 6200 50  0001 C CNN
	1    4300 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 61399AC4
P 4500 5950
F 0 "J6" H 4580 5942 50  0000 L CNN
F 1 "TP_GND" H 4580 5851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4500 5950 50  0001 C CNN
F 3 "~" H 4500 5950 50  0001 C CNN
	1    4500 5950
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0133
U 1 1 61301C68
P 2050 2300
F 0 "#PWR0133" H 2050 2400 50  0001 C CNN
F 1 "-12V" H 2065 2473 50  0000 C CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
	1    2050 2300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0134
U 1 1 6130151C
P 2250 1550
F 0 "#PWR0134" H 2250 1400 50  0001 C CNN
F 1 "+12V" H 2265 1723 50  0000 C CNN
F 2 "" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2200 2650 2350
Wire Wire Line
	3050 2200 3050 2350
Wire Wire Line
	2650 1550 2650 1700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 612E906B
P 2650 1700
F 0 "#FLG0103" H 2650 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 1873 50  0000 C CNN
F 2 "" H 2650 1700 50  0001 C CNN
F 3 "~" H 2650 1700 50  0001 C CNN
	1    2650 1700
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 612E8330
P 2650 2200
F 0 "#FLG0104" H 2650 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 2373 50  0000 C CNN
F 2 "" H 2650 2200 50  0001 C CNN
F 3 "~" H 2650 2200 50  0001 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 612E687F
P 3050 2200
F 0 "#FLG0105" H 3050 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 3050 2373 50  0000 C CNN
F 2 "" H 3050 2200 50  0001 C CNN
F 3 "~" H 3050 2200 50  0001 C CNN
	1    3050 2200
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0135
U 1 1 612E5CD7
P 2650 2350
F 0 "#PWR0135" H 2650 2450 50  0001 C CNN
F 1 "-12V" H 2665 2523 50  0000 C CNN
F 2 "" H 2650 2350 50  0001 C CNN
F 3 "" H 2650 2350 50  0001 C CNN
	1    2650 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 612E58D1
P 3050 2350
F 0 "#PWR0136" H 3050 2100 50  0001 C CNN
F 1 "GND" H 3055 2177 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0137
U 1 1 612E5555
P 2650 1550
F 0 "#PWR0137" H 2650 1400 50  0001 C CNN
F 1 "+12V" H 2665 1723 50  0000 C CNN
F 2 "" H 2650 1550 50  0001 C CNN
F 3 "" H 2650 1550 50  0001 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 612BB413
P 1450 4200
F 0 "C7" H 1568 4246 50  0000 L CNN
F 1 "47u" H 1568 4155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1488 4050 50  0001 C CNN
F 3 "~" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 612BB071
P 1450 3600
F 0 "C6" H 1568 3646 50  0000 L CNN
F 1 "47u" H 1568 3555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1488 3450 50  0001 C CNN
F 3 "~" H 1450 3600 50  0001 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1350 6700 2100
Wire Wire Line
	5750 1350 5750 2200
Wire Wire Line
	6700 1000 6700 1350
Wire Wire Line
	6400 1000 6700 1000
Wire Wire Line
	5750 1000 5750 1350
Wire Wire Line
	6100 1000 5750 1000
$Comp
L Device:C C1
U 1 1 612D452C
P 6250 1000
F 0 "C1" V 5998 1000 50  0000 C CNN
F 1 "10p" V 6089 1000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6288 850 50  0001 C CNN
F 3 "~" H 6250 1000 50  0001 C CNN
	1    6250 1000
	0    1    1    0   
$EndComp
Connection ~ 5750 1350
Connection ~ 6700 1350
Wire Wire Line
	1450 6500 1450 6250
$Comp
L power:GND #PWR0138
U 1 1 627C8C3B
P 1450 6500
F 0 "#PWR0138" H 1450 6250 50  0001 C CNN
F 1 "GND" H 1455 6327 50  0000 C CNN
F 2 "" H 1450 6500 50  0001 C CNN
F 3 "" H 1450 6500 50  0001 C CNN
	1    1450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 627C8C45
P 1450 6100
F 0 "C11" H 1568 6146 50  0000 L CNN
F 1 "100u" H 1568 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1488 5950 50  0001 C CNN
F 3 "~" H 1450 6100 50  0001 C CNN
	1    1450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5550 1450 5700
Wire Wire Line
	1450 5700 1900 5700
Connection ~ 1450 5700
Wire Wire Line
	1450 5700 1450 5950
$Comp
L Device:Jumper JP1
U 1 1 627FBC29
P 7400 3350
F 0 "JP1" H 7400 3614 50  0000 C CNN
F 1 "Jumper" H 7400 3523 50  0000 C CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 627FE364
P 9300 3350
F 0 "JP2" H 9300 3614 50  0000 C CNN
F 1 "Jumper" H 9300 3523 50  0000 C CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" H 9300 3350 50  0001 C CNN
F 3 "~" H 9300 3350 50  0001 C CNN
	1    9300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 627FE9A7
P 9300 3600
F 0 "JP3" H 9300 3500 50  0000 C CNN
F 1 "Jumper" H 9300 3400 50  0000 C CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" H 9300 3600 50  0001 C CNN
F 3 "~" H 9300 3600 50  0001 C CNN
	1    9300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3350 7050 3350
Wire Wire Line
	7700 3350 7800 3350
Wire Wire Line
	7700 3600 7800 3600
Wire Wire Line
	9000 3350 8900 3350
Wire Wire Line
	9000 3600 8900 3600
Wire Wire Line
	9600 3350 9800 3350
Wire Wire Line
	9800 2900 9800 3350
Wire Wire Line
	9600 3600 9800 3600
Wire Wire Line
	9800 3600 9800 5400
$Comp
L Switch:SW_SPDT SW1
U 1 1 623F7CEA
P 7400 3800
F 0 "SW1" H 7400 4085 50  0000 C CNN
F 1 "SW_MONO" H 7400 3994 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7400 3800 50  0001 C CNN
F 3 "~" H 7400 3800 50  0001 C CNN
	1    7400 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 3800 7700 3800
Wire Wire Line
	7700 3800 7700 3600
Wire Wire Line
	7200 3700 7050 3700
Wire Wire Line
	7050 3700 7050 3350
Connection ~ 7050 3350
Wire Wire Line
	7050 3350 6850 3350
Wire Wire Line
	7200 3900 6850 3900
Wire Wire Line
	8000 2400 8150 2400
$Comp
L Device:R_POT RV2
U 1 1 612D4E21
P 7300 2400
F 0 "RV2" H 7230 2354 50  0000 R CNN
F 1 "50k/B" H 7230 2445 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09Y11_Single_Horizontal" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2400 7450 2400
$Comp
L Amplifier_Operational:TL072 U2
U 2 1 624A6F33
P 8450 4750
F 0 "U2" H 8450 5117 50  0000 C CNN
F 1 "TL072" H 8450 5026 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8450 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8450 4750 50  0001 C CNN
	2    8450 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 624A7883
P 7700 4850
F 0 "R12" V 7493 4850 50  0000 C CNN
F 1 "100k(C&T)" V 7584 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
	1    7700 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 624A788D
P 9000 4750
F 0 "R11" V 8793 4750 50  0000 C CNN
F 1 "1k" V 8884 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 4750 50  0001 C CNN
F 3 "~" H 9000 4750 50  0001 C CNN
	1    9000 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4650 8100 4650
Wire Wire Line
	8100 4650 8100 5050
$Comp
L power:GND #PWR01
U 1 1 624A78A3
P 8100 5050
F 0 "#PWR01" H 8100 4800 50  0001 C CNN
F 1 "GND" H 8105 4877 50  0000 C CNN
F 2 "" H 8100 5050 50  0001 C CNN
F 3 "" H 8100 5050 50  0001 C CNN
	1    8100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4250 8800 4750
Wire Wire Line
	8800 4750 8750 4750
Wire Wire Line
	8850 4750 8800 4750
Connection ~ 8800 4750
$Comp
L power:GND #PWR02
U 1 1 624A78B3
P 9500 2450
F 0 "#PWR02" H 9500 2200 50  0001 C CNN
F 1 "GND" H 9505 2277 50  0000 C CNN
F 2 "" H 9500 2450 50  0001 C CNN
F 3 "" H 9500 2450 50  0001 C CNN
	1    9500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2400 9500 2400
Wire Wire Line
	9500 2400 9500 2450
Wire Wire Line
	8000 4850 8150 4850
Wire Wire Line
	7450 4850 7550 4850
$Comp
L Device:R R8
U 1 1 62463010
P 8400 4250
F 0 "R8" V 8193 4250 50  0000 C CNN
F 1 "330k(C&T)" V 8284 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 4250 50  0001 C CNN
F 3 "~" H 8400 4250 50  0001 C CNN
	1    8400 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 4250 8000 4250
Wire Wire Line
	8000 4250 8000 4850
Wire Wire Line
	8550 4250 8800 4250
Wire Wire Line
	7850 4850 8000 4850
Connection ~ 8000 4850
$Comp
L Device:R R2
U 1 1 624B4190
P 8400 1800
F 0 "R2" V 8193 1800 50  0000 C CNN
F 1 "330k(C&T)" V 8284 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1800 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2400 8000 2400
Connection ~ 8000 2400
Wire Wire Line
	8000 1800 8250 1800
Wire Wire Line
	8000 1800 8000 2400
Wire Wire Line
	8550 1800 8800 1800
Wire Wire Line
	2800 5550 2800 5700
Wire Wire Line
	2650 5700 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 2800 5950
Wire Wire Line
	2800 5700 3250 5700
Wire Wire Line
	3250 5700 3250 5800
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 6252F051
P 3950 2100
F 0 "J2" H 3868 2417 50  0000 C CNN
F 1 "IN" H 3868 2326 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3950 2100 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
	1    3950 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 2000 4800 2000
Wire Wire Line
	4150 2100 4400 2100
Text Label 4150 2000 0    50   ~ 0
LIN
Wire Wire Line
	4150 2200 4300 2200
Wire Wire Line
	4300 2200 4300 4450
Wire Wire Line
	4300 4450 4800 4450
Wire Wire Line
	4150 2300 4200 2300
Text Label 4150 2200 0    50   ~ 0
RIN
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 62577294
P 9800 2200
F 0 "J3" H 9880 2192 50  0000 L CNN
F 1 "OUT" H 9880 2101 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 9800 2200 50  0001 C CNN
F 3 "~" H 9800 2200 50  0001 C CNN
	1    9800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2300 9200 2100
Wire Wire Line
	9200 2100 9600 2100
Wire Wire Line
	9600 2300 9400 2300
Wire Wire Line
	9400 2750 10000 2750
Wire Wire Line
	10000 2750 10000 4750
Wire Wire Line
	9400 2300 9400 2750
Wire Wire Line
	9150 4750 10000 4750
Wire Wire Line
	9800 5400 7300 5400
Wire Wire Line
	7300 5000 7300 5400
Wire Wire Line
	9300 2200 9600 2200
Text Label 9400 2100 0    50   ~ 0
LOUT
Text Label 9400 2300 0    50   ~ 0
ROUT
$Comp
L Device:R_POT RV1
U 1 1 612C7543
P 4800 2200
F 0 "RV1" H 4731 2154 50  0000 R CNN
F 1 "50k/A" H 4731 2245 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4800 2200 50  0001 C CNN
F 3 "~" H 4800 2200 50  0001 C CNN
	1    4800 2200
	1    0    0    1   
$EndComp
$EndSCHEMATC
