EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Charger"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "For ELP305 Lab"
Comment4 "Author : Group E"
$EndDescr
$Comp
L pspice:CAP C1
U 1 1 60316869
P 2000 3400
F 0 "C1" H 2178 3446 50  0000 L CNN
F 1 "1m" H 2178 3355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 2000 3400 50  0001 C CNN
F 3 "~" H 2000 3400 50  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:BZX84Cxx D5
U 1 1 603170B0
P 2950 3700
F 0 "D5" V 2904 3780 50  0000 L CNN
F 1 "BZX84Cxx" V 2995 3780 50  0000 L CNN
F 2 "zener:DIOAD1060W80L410D260" H 2950 3525 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 2950 3700 50  0001 C CNN
	1    2950 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60317AB7
P 2950 2700
F 0 "R1" H 3020 2746 50  0000 L CNN
F 1 "20" H 3020 2655 50  0000 L CNN
F 2 "resist_20:EXC-ELSA39" V 2880 2700 50  0001 C CNN
F 3 "~" H 2950 2700 50  0001 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 60318512
P 3950 3100
F 0 "C2" H 4128 3146 50  0000 L CNN
F 1 "47u" H 4128 3055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3950 3100 50  0001 C CNN
F 3 "~" H 3950 3100 50  0001 C CNN
	1    3950 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1085-5.0 U1
U 1 1 6031B799
P 5050 2350
F 0 "U1" H 5050 2592 50  0000 C CNN
F 1 "LT1085-5.0" H 5050 2501 50  0000 C CNN
F 2 "LT1085_charger:TO220L1" H 5050 2600 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1083ffe.pdf" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3150 2000 2350
Wire Wire Line
	2000 3650 2000 4300
Wire Wire Line
	2000 4300 1150 4300
Wire Wire Line
	2950 4300 2950 3850
Wire Wire Line
	2950 3550 2950 3150
Wire Wire Line
	2950 2550 2950 2350
Wire Wire Line
	2950 2350 2000 2350
Connection ~ 2000 2350
Wire Wire Line
	2950 3150 3450 3150
Wire Wire Line
	3450 3150 3450 2350
Wire Wire Line
	3450 2350 3950 2350
Wire Wire Line
	3950 2350 3950 2850
Connection ~ 2950 3150
Wire Wire Line
	2950 3150 2950 2850
Wire Wire Line
	3950 3350 3950 4300
Wire Wire Line
	3950 4300 2950 4300
Connection ~ 2950 4300
Wire Wire Line
	2000 4300 2950 4300
Connection ~ 2000 4300
Wire Wire Line
	3950 2350 4750 2350
Connection ~ 3950 2350
Wire Wire Line
	3950 4300 5050 4300
Connection ~ 3950 4300
Wire Wire Line
	6600 3500 6600 4300
Wire Wire Line
	6600 2350 6600 3000
Wire Wire Line
	5050 2650 5050 4300
Connection ~ 5050 4300
Wire Wire Line
	5050 4300 6600 4300
$Comp
L pspice:CAP C3
U 1 1 6031AA99
P 6600 3250
F 0 "C3" H 6778 3296 50  0000 L CNN
F 1 "47u" H 6778 3205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6600 3250 50  0001 C CNN
F 3 "~" H 6600 3250 50  0001 C CNN
	1    6600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2350 6600 2350
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6031590C
P 1500 1000
F 0 "J1" H 1580 992 50  0000 L CNN
F 1 "Input" H 1580 901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1500 1000 50  0001 C CNN
F 3 "~" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L USB-A-S-X-X-SM2:USB-A-S-X-X-SM2 J2
U 1 1 6032BA44
P 9500 1450
F 0 "J2" H 9730 1446 50  0000 L CNN
F 1 "USB-A-S-X-X-SM2" H 9730 1355 50  0000 L CNN
F 2 "USB:SAMTEC_USB-A-S-X-X-SM2" H 9500 1450 50  0001 L BNN
F 3 "" H 9500 1450 50  0001 L BNN
F 4 "7.8 mm" H 9500 1450 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "T" H 9500 1450 50  0001 L BNN "PARTREV"
F 6 "Manufacturer Recommendations" H 9500 1450 50  0001 L BNN "STANDARD"
F 7 "Samtec" H 9500 1450 50  0001 L BNN "MANUFACTURER"
	1    9500 1450
	1    0    0    -1  
$EndComp
Text GLabel 6600 4300 3    50   Input ~ 0
gnd
Text GLabel 9100 1250 0    50   Input ~ 0
Vout
Text GLabel 9100 1550 0    50   Input ~ 0
gnd
Text GLabel 1300 1100 0    50   Input ~ 10
-
Text GLabel 1300 1000 0    50   Input ~ 10
+
Text GLabel 850  3150 0    50   Input ~ 10
-
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 603431A1
P 1150 3150
F 0 "D1" V 1196 2806 50  0000 R CNN
F 1 "D_Bridge_+-AA" V 1105 2806 50  0000 R CNN
F 2 "" H 1150 3150 50  0001 C CNN
F 3 "~" H 1150 3150 50  0001 C CNN
	1    1150 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 3450 1150 4300
Wire Wire Line
	1150 2850 1150 2350
Wire Wire Line
	1150 2350 2000 2350
Text GLabel 1450 3150 3    50   Input ~ 0
+
$Comp
L 2021-02-22_11-22-20:TPS2546RTER U2
U 1 1 6034FCE9
P 7950 3050
F 0 "U2" H 7950 4136 60  0000 C CNN
F 1 "TPS2546RTER" H 7950 4030 60  0000 C CNN
F 2 "RTE0016C" H 7950 2990 60  0001 C CNN
F 3 "" H 7950 3050 60  0000 C CNN
	1    7950 3050
	1    0    0    -1  
$EndComp
Connection ~ 6600 2350
Text GLabel 6600 2350 1    50   Input ~ 0
Vint
$Comp
L Device:R R2
U 1 1 60350D30
P 7100 2550
F 0 "R2" V 6893 2550 50  0000 C CNN
F 1 "100k" V 6984 2550 50  0000 C CNN
F 2 "" V 7030 2550 50  0001 C CNN
F 3 "~" H 7100 2550 50  0001 C CNN
	1    7100 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2350 6950 2350
$Comp
L Device:R R3
U 1 1 60351A1E
P 9000 3800
F 0 "R3" H 9070 3846 50  0000 L CNN
F 1 "80.6k" H 9070 3755 50  0000 L CNN
F 2 "" V 8930 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60351D9A
P 9350 3800
F 0 "R4" H 9420 3846 50  0000 L CNN
F 1 "16.9k" H 9420 3755 50  0000 L CNN
F 2 "" V 9280 3800 50  0001 C CNN
F 3 "~" H 9350 3800 50  0001 C CNN
	1    9350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4300 8750 4300
Wire Wire Line
	9350 4300 9350 3950
Connection ~ 6600 4300
Wire Wire Line
	9000 3950 9000 4300
Connection ~ 9000 4300
Wire Wire Line
	9000 4300 9350 4300
Wire Wire Line
	8650 3150 9350 3150
Wire Wire Line
	9350 3150 9350 3650
Wire Wire Line
	8650 3350 9000 3350
Wire Wire Line
	9000 3350 9000 3650
Wire Wire Line
	8650 3750 8750 3750
Wire Wire Line
	8750 3750 8750 4300
Connection ~ 8750 4300
Wire Wire Line
	8750 4300 9000 4300
Text GLabel 7250 3750 0    50   Input ~ 0
Vint
Text GLabel 7250 3850 0    50   Input ~ 0
Vint
Text GLabel 7250 3450 0    50   Input ~ 0
Vint
Text GLabel 7250 3650 0    50   Input ~ 0
gnd
Wire Wire Line
	6950 2550 6950 2350
Connection ~ 6950 2350
Wire Wire Line
	6950 2350 7250 2350
Text GLabel 8650 2350 2    50   Input ~ 0
Vout
$EndSCHEMATC
