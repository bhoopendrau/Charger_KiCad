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
L Regulator_Linear:LT1085-5.0 U1
U 1 1 6031B799
P 6300 2350
F 0 "U1" H 6300 2592 50  0000 C CNN
F 1 "LT1085-5.0" H 6300 2501 50  0000 C CNN
F 2 "LT1085_charger:TO220L1" H 6300 2600 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1083ffe.pdf" H 6300 2350 50  0001 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3500 6600 4300
Wire Wire Line
	6600 2350 6600 3000
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
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6031590C
P 3600 700
F 0 "J1" H 3680 692 50  0000 L CNN
F 1 "Input" H 3680 601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3600 700 50  0001 C CNN
F 3 "~" H 3600 700 50  0001 C CNN
	1    3600 700 
	1    0    0    -1  
$EndComp
$Comp
L Charger-rescue:USB-A-S-X-X-SM2-USB-A-S-X-X-SM2 J2
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
Vout1
Text GLabel 9100 1550 0    50   Input ~ 0
gnd
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 603431A1
P 1000 2100
F 0 "D1" V 1150 1850 50  0000 R CNN
F 1 "D_Bridge_+-AA" V 750 1950 50  0000 R CNN
F 2 "rectifier:SOIC245P670X270-4N" H 1000 2100 50  0001 C CNN
F 3 "~" H 1000 2100 50  0001 C CNN
	1    1000 2100
	1    0    0    -1  
$EndComp
Text GLabel 6600 2350 1    50   Input ~ 0
Vint
$Comp
L Device:R R3
U 1 1 60351A1E
P 9000 3800
F 0 "R3" H 9070 3846 50  0000 L CNN
F 1 "80.6k" H 9070 3755 50  0000 L CNN
F 2 "R806:RESC5025X70N" V 8930 3800 50  0001 C CNN
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
F 2 "R169:RESC1608X50N" V 9280 3800 50  0001 C CNN
F 3 "~" H 9350 3800 50  0001 C CNN
	1    9350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4300 8750 4300
Wire Wire Line
	9350 4300 9350 3950
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
Text GLabel 8650 2350 2    50   Input ~ 0
Vout1
NoConn ~ 7250 2950
NoConn ~ 7250 3150
NoConn ~ 7250 3250
NoConn ~ 8650 3850
Text GLabel 3400 700  0    50   Input ~ 0
AC1
Text GLabel 3400 800  0    50   Input ~ 0
AC2
Wire Wire Line
	6300 2650 6300 4300
$Comp
L Charger-rescue:TPS2546RTER-2021-02-22_11-22-20 U2
U 1 1 6034FCE9
P 7950 3050
F 0 "U2" H 7950 4136 60  0000 C CNN
F 1 "TPS2546" H 7950 4030 60  0000 C CNN
F 2 "footprints:TPS2546RTER" H 7950 2990 60  0001 C CNN
F 3 "" H 7950 3050 60  0000 C CNN
F 4 "X" H 7950 3050 50  0001 C CNN "Spice_Primitive"
F 5 "TPS2546_TRANS" H 7950 3050 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7950 3050 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "C:\\Users\\bhoop\\Downloads\\slvm796a\\SLVM796\\TPS2546_PSPICE_TRANS\\TPS2546_TRANS.LIB" H 7950 3050 50  0001 C CNN "Spice_Lib_File"
	1    7950 3050
	1    0    0    -1  
$EndComp
Text GLabel 9100 1350 0    50   Input ~ 0
DM1
Text GLabel 9100 1450 0    50   Input ~ 0
DP1
Text GLabel 8650 2550 2    50   Input ~ 0
DM1
Text GLabel 8650 2750 2    50   Input ~ 0
DP1
Connection ~ 6600 2350
$Comp
L Charger-rescue:TPS2546RTER-2021-02-22_11-22-20 U4
U 1 1 60368855
P 7900 5350
F 0 "U4" H 7900 6436 60  0000 C CNN
F 1 "TPS2546RTER" H 7900 6330 60  0000 C CNN
F 2 "RTE0016C" H 7900 5290 60  0001 C CNN
F 3 "" H 7900 5350 60  0000 C CNN
	1    7900 5350
	1    0    0    -1  
$EndComp
Text GLabel 6600 4700 0    50   Input ~ 0
Vint
Text GLabel 7200 6050 0    50   Input ~ 0
Vint
Text GLabel 7200 6150 0    50   Input ~ 0
Vint
Text GLabel 7200 5750 0    50   Input ~ 0
Vint
Text GLabel 7200 5950 0    50   Input ~ 0
gnd
Text GLabel 9450 6300 2    50   Input ~ 0
gnd
Wire Wire Line
	6600 4650 6600 4700
Wire Wire Line
	8600 5450 9450 5450
Wire Wire Line
	9450 5450 9450 5750
Wire Wire Line
	8600 5650 9050 5650
Wire Wire Line
	9050 5650 9050 5750
Wire Wire Line
	9050 6300 9450 6300
Wire Wire Line
	8600 6050 8800 6050
Wire Wire Line
	8800 6050 8800 6300
Wire Wire Line
	8800 6300 9050 6300
Connection ~ 9050 6300
Text GLabel 7250 2550 0    50   Input ~ 0
Stat2
Text GLabel 7200 5050 0    50   Input ~ 0
Stat2
Text GLabel 7200 4850 0    50   Input ~ 0
Stat1
Text GLabel 7250 2750 0    50   Input ~ 0
Stat1
NoConn ~ 7200 5250
NoConn ~ 7200 5450
NoConn ~ 7200 5550
$Comp
L Device:R R5
U 1 1 6036FD68
P 9050 5900
F 0 "R5" H 9120 5946 50  0000 L CNN
F 1 "80.6k" H 9120 5855 50  0000 L CNN
F 2 "" V 8980 5900 50  0001 C CNN
F 3 "~" H 9050 5900 50  0001 C CNN
	1    9050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 6050 9050 6300
$Comp
L Device:R R6
U 1 1 603705C7
P 9450 5900
F 0 "R6" H 9520 5946 50  0000 L CNN
F 1 "16.9k" H 9520 5855 50  0000 L CNN
F 2 "" V 9380 5900 50  0001 C CNN
F 3 "~" H 9450 5900 50  0001 C CNN
	1    9450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 6050 9450 6300
$Comp
L Charger-rescue:USB-A-S-X-X-SM2-USB-A-S-X-X-SM2 J3
U 1 1 60370EEE
P 9900 4750
F 0 "J3" H 10130 4746 50  0000 L CNN
F 1 "USB-A-S-X-X-SM2" H 10130 4655 50  0000 L CNN
F 2 "SAMTEC_USB-A-S-X-X-SM2" H 9900 4750 50  0001 L BNN
F 3 "" H 9900 4750 50  0001 L BNN
F 4 "7.8 mm" H 9900 4750 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "T" H 9900 4750 50  0001 L BNN "PARTREV"
F 6 "Manufacturer Recommendations" H 9900 4750 50  0001 L BNN "STANDARD"
F 7 "Samtec" H 9900 4750 50  0001 L BNN "MANUFACTURER"
	1    9900 4750
	1    0    0    -1  
$EndComp
Text GLabel 9500 4850 0    50   Input ~ 0
gnd
Text GLabel 9500 4750 0    50   Input ~ 0
DP2
Text GLabel 9500 4650 0    50   Input ~ 0
DM2
Text GLabel 9500 4550 0    50   Input ~ 0
Vout2
Text GLabel 8600 4650 2    50   Input ~ 0
Vout2
Text GLabel 8600 4850 2    50   Input ~ 0
DM2
Text GLabel 8600 5050 2    50   Input ~ 0
DP2
NoConn ~ 8600 6150
Wire Wire Line
	1800 6250 1450 6250
Wire Wire Line
	1450 6250 1450 6050
Wire Wire Line
	1450 5950 1800 5950
Wire Wire Line
	1800 6050 1450 6050
Connection ~ 1450 6050
Wire Wire Line
	1450 6050 1450 5950
Text GLabel 800  6950 3    50   Input ~ 0
gnd
Wire Wire Line
	1450 6050 1250 6050
Wire Wire Line
	800  6950 1250 6950
Connection ~ 1250 6050
Wire Wire Line
	1250 6050 800  6050
$Comp
L Device:R R9
U 1 1 6037A42F
P 1250 6250
F 0 "R9" H 1320 6296 50  0000 L CNN
F 1 "40.2k" H 1320 6205 50  0000 L CNN
F 2 "" V 1180 6250 50  0001 C CNN
F 3 "~" H 1250 6250 50  0001 C CNN
	1    1250 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6100 1250 6050
$Comp
L Device:R R10
U 1 1 6037B03C
P 1250 6800
F 0 "R10" H 1320 6846 50  0000 L CNN
F 1 "54k" H 1320 6755 50  0000 L CNN
F 2 "" V 1180 6800 50  0001 C CNN
F 3 "~" H 1250 6800 50  0001 C CNN
	1    1250 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6037B746
P 800 6200
F 0 "R7" H 870 6246 50  0000 L CNN
F 1 "40.2k" H 870 6155 50  0000 L CNN
F 2 "" V 730 6200 50  0001 C CNN
F 3 "~" H 800 6200 50  0001 C CNN
	1    800  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6350 800  6450
$Comp
L Device:R R8
U 1 1 6037BDF6
P 800 6650
F 0 "R8" H 870 6696 50  0000 L CNN
F 1 "90.9k" H 870 6605 50  0000 L CNN
F 2 "" V 730 6650 50  0001 C CNN
F 3 "~" H 800 6650 50  0001 C CNN
	1    800  6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6800 800  6950
Wire Wire Line
	1250 6400 1250 6650
Wire Wire Line
	1800 6150 1650 6150
Wire Wire Line
	1650 6150 1650 6400
Wire Wire Line
	1650 6400 1250 6400
Connection ~ 1250 6400
Wire Wire Line
	1700 6350 1700 6450
Wire Wire Line
	1700 6450 800  6450
Wire Wire Line
	1700 6350 1800 6350
Connection ~ 800  6450
Wire Wire Line
	800  6450 800  6500
Wire Wire Line
	1800 6550 1350 6550
Wire Wire Line
	1350 6550 1350 6650
$Comp
L pspice:CAP C2
U 1 1 60382B85
P 1600 6650
F 0 "C2" V 1285 6650 50  0000 C CNN
F 1 "4.7u" V 1376 6650 50  0000 C CNN
F 2 "" H 1600 6650 50  0001 C CNN
F 3 "~" H 1600 6650 50  0001 C CNN
	1    1600 6650
	0    1    1    0   
$EndComp
Text GLabel 1750 7550 0    50   Input ~ 0
gnd
Wire Wire Line
	1800 6450 1750 6450
Wire Wire Line
	1750 6450 1750 6900
$Comp
L pspice:CAP C4
U 1 1 603890DE
P 1750 7150
F 0 "C4" H 1928 7196 50  0000 L CNN
F 1 "0.1u" H 1928 7105 50  0000 L CNN
F 2 "" H 1750 7150 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7400 1750 7550
Text GLabel 4600 5950 2    50   Input ~ 0
gnd
Wire Wire Line
	6300 4300 6600 4300
Connection ~ 6600 4300
Text GLabel 4600 6050 2    50   Input ~ 0
Vin_sense
$Comp
L Device:C C6
U 1 1 6036F151
P 4850 6350
F 0 "C6" V 5102 6350 50  0000 C CNN
F 1 "4.7u" V 5011 6350 50  0000 C CNN
F 2 "" H 4888 6200 50  0001 C CNN
F 3 "~" H 4850 6350 50  0001 C CNN
	1    4850 6350
	0    -1   -1   0   
$EndComp
Text GLabel 5000 6350 2    50   Input ~ 0
gnd
$Comp
L Device:R R16
U 1 1 60371023
P 5500 6950
F 0 "R16" V 5293 6950 50  0000 C CNN
F 1 "90k" V 5384 6950 50  0000 C CNN
F 2 "" V 5430 6950 50  0001 C CNN
F 3 "~" H 5500 6950 50  0001 C CNN
	1    5500 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 603713CE
P 5650 7300
F 0 "R17" H 5720 7346 50  0000 L CNN
F 1 "10k" H 5720 7255 50  0000 L CNN
F 2 "" V 5580 7300 50  0001 C CNN
F 3 "~" H 5650 7300 50  0001 C CNN
	1    5650 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60371D80
P 6000 7300
F 0 "C9" H 6115 7346 50  0000 L CNN
F 1 "22p" H 6115 7255 50  0000 L CNN
F 2 "" H 6038 7150 50  0001 C CNN
F 3 "~" H 6000 7300 50  0001 C CNN
	1    6000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 7150 6000 7150
Connection ~ 5650 7150
Text GLabel 5350 6950 1    50   Input ~ 0
dcm
Wire Wire Line
	4600 6350 4700 6350
Wire Wire Line
	5650 7450 6000 7450
Text GLabel 5850 7450 3    50   Input ~ 0
gnd
Text GLabel 4600 6550 2    50   Input ~ 0
VinL
Text GLabel 4600 6450 2    50   Input ~ 0
en
$Comp
L pspice:MNMOS M1
U 1 1 6037A3B7
P 5650 5850
F 0 "M1" H 5938 5896 50  0000 L CNN
F 1 "MNMOS" H 5938 5805 50  0000 L CNN
F 2 "" H 5625 5850 50  0001 C CNN
F 3 "~" H 5625 5850 50  0001 C CNN
	1    5650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6250 5450 6250
Wire Wire Line
	5450 6250 5450 5850
Wire Wire Line
	4600 6150 5750 6150
Wire Wire Line
	5750 6150 5750 6050
Wire Wire Line
	5850 6050 5750 6050
Connection ~ 5750 6050
$Comp
L Device:R R18
U 1 1 6037FC70
P 5750 6400
F 0 "R18" H 5820 6446 50  0000 L CNN
F 1 "0.05" H 5820 6355 50  0000 L CNN
F 2 "" V 5680 6400 50  0001 C CNN
F 3 "~" H 5750 6400 50  0001 C CNN
	1    5750 6400
	1    0    0    -1  
$EndComp
Text GLabel 5750 6550 3    50   Input ~ 0
gnd
Wire Wire Line
	5750 6150 5750 6250
Connection ~ 5750 6150
$Comp
L pspice:DIODE D5
U 1 1 603824E5
P 4600 4700
F 0 "D5" V 4646 4572 50  0000 R CNN
F 1 "DIODE" V 4555 4572 50  0000 R CNN
F 2 "" H 4600 4700 50  0001 C CNN
F 3 "~" H 4600 4700 50  0001 C CNN
	1    4600 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 4900 4600 5050
$Comp
L Device:D_Zener D4
U 1 1 60384E6B
P 4600 4050
F 0 "D4" V 4646 3970 50  0000 R CNN
F 1 "D_Zener" V 4555 3970 50  0000 R CNN
F 2 "" H 4600 4050 50  0001 C CNN
F 3 "~" H 4600 4050 50  0001 C CNN
	1    4600 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 4200 4600 4500
Text GLabel 700  2100 0    50   Input ~ 0
gnd
$Comp
L Device:C C1
U 1 1 6039DE55
P 1450 2350
F 0 "C1" H 1565 2396 50  0000 L CNN
F 1 "4.7m" H 1565 2305 50  0000 L CNN
F 2 "" H 1488 2200 50  0001 C CNN
F 3 "~" H 1450 2350 50  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
Text GLabel 1450 2700 3    50   Input ~ 0
gnd
Wire Wire Line
	1300 2100 1450 2100
Wire Wire Line
	1450 2100 1450 2200
Wire Wire Line
	1450 2500 1450 2700
Connection ~ 1450 2100
$Comp
L Device:R R11
U 1 1 603A25C6
P 1850 2550
F 0 "R11" H 1920 2596 50  0000 L CNN
F 1 "1meg" H 1920 2505 50  0000 L CNN
F 2 "" V 1780 2550 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Text GLabel 1850 2950 3    50   Input ~ 0
Vin_sense
Wire Wire Line
	1850 2100 1850 2400
Wire Wire Line
	1850 2700 1850 2950
Connection ~ 1850 2100
Wire Wire Line
	1850 2100 1450 2100
$Comp
L Device:R R12
U 1 1 603A787A
P 2600 2450
F 0 "R12" H 2670 2496 50  0000 L CNN
F 1 "200k" H 2670 2405 50  0000 L CNN
F 2 "" V 2530 2450 50  0001 C CNN
F 3 "~" H 2600 2450 50  0001 C CNN
	1    2600 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 603A8137
P 2600 3500
F 0 "R13" H 2670 3546 50  0000 L CNN
F 1 "1meg" H 2670 3455 50  0000 L CNN
F 2 "" V 2530 3500 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
	1    2600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 603A91BA
P 2600 4100
F 0 "R14" H 2670 4146 50  0000 L CNN
F 1 "95.3k" H 2670 4055 50  0000 L CNN
F 2 "" V 2530 4100 50  0001 C CNN
F 3 "~" H 2600 4100 50  0001 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 603A9818
P 2200 3300
F 0 "C5" H 2315 3346 50  0000 L CNN
F 1 "10u" H 2315 3255 50  0000 L CNN
F 2 "" H 2238 3150 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2100 2600 2300
Wire Wire Line
	2600 2600 2600 2750
Wire Wire Line
	2600 3650 2600 3950
Wire Wire Line
	2600 3100 2600 3150
Wire Wire Line
	2600 2100 1850 2100
Wire Wire Line
	2200 3150 2600 3150
Connection ~ 2600 3150
Wire Wire Line
	2600 3150 2600 3350
Wire Wire Line
	2200 3450 2200 4250
Wire Wire Line
	2200 4250 2600 4250
Text GLabel 2400 4250 3    50   Input ~ 0
gnd
Text GLabel 2600 3300 2    50   Input ~ 0
VinL
Text GLabel 2600 3800 2    50   Input ~ 0
en
$Comp
L Device:C C7
U 1 1 603708E1
P 5200 6950
F 0 "C7" V 4948 6950 50  0000 C CNN
F 1 "4.7p" V 5039 6950 50  0000 C CNN
F 2 "" H 5238 6800 50  0001 C CNN
F 3 "~" H 5200 6950 50  0001 C CNN
	1    5200 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 6950 5650 7150
Wire Wire Line
	4600 6750 4600 7150
Wire Wire Line
	4600 7150 5650 7150
Wire Wire Line
	4600 6650 5050 6650
Wire Wire Line
	5050 6650 5050 6950
$Comp
L Device:R R15
U 1 1 603CB6B7
P 3700 3150
F 0 "R15" V 3907 3150 50  0000 C CNN
F 1 "20" V 3816 3150 50  0000 C CNN
F 2 "" V 3630 3150 50  0001 C CNN
F 3 "~" H 3700 3150 50  0001 C CNN
	1    3700 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3150 2950 3150
Wire Wire Line
	3250 3150 3550 3150
Wire Wire Line
	5750 5050 5750 5650
Wire Wire Line
	2600 2100 4600 2100
Wire Wire Line
	4600 2100 4600 3900
Connection ~ 2600 2100
$Comp
L Device:L L1
U 1 1 603DA74E
P 5250 3450
F 0 "L1" H 5303 3496 50  0000 L CNN
F 1 "L" H 5303 3405 50  0000 L CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "~" H 5250 3450 50  0001 C CNN
	1    5250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 603DAC0C
P 5250 4300
F 0 "L2" H 5303 4346 50  0000 L CNN
F 1 "L" H 5303 4255 50  0000 L CNN
F 2 "" H 5250 4300 50  0001 C CNN
F 3 "~" H 5250 4300 50  0001 C CNN
	1    5250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L3
U 1 1 603DB4B7
P 5550 3700
F 0 "L3" H 5603 3746 50  0000 L CNN
F 1 "L" H 5603 3655 50  0000 L CNN
F 2 "" H 5550 3700 50  0001 C CNN
F 3 "~" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3150 5250 3150
Wire Wire Line
	5250 3150 5250 3300
Wire Wire Line
	4600 3900 5250 3900
Wire Wire Line
	5250 3900 5250 4150
Connection ~ 4600 3900
Wire Wire Line
	5250 4450 5250 5050
Wire Wire Line
	4600 5050 5250 5050
Connection ~ 5250 5050
Wire Wire Line
	5250 5050 5750 5050
Text GLabel 5550 3850 3    50   Input ~ 0
gnd
Text GLabel 5250 3600 3    50   Input ~ 0
gnd
Text GLabel 3950 3150 3    50   Input ~ 0
dcm
$Comp
L Device:C C8
U 1 1 603E8C71
P 5950 2850
F 0 "C8" H 6065 2896 50  0000 L CNN
F 1 "470u" H 6065 2805 50  0000 L CNN
F 2 "" H 5988 2700 50  0001 C CNN
F 3 "~" H 5950 2850 50  0001 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 603E99B5
P 5800 2350
F 0 "D6" H 5800 2133 50  0000 C CNN
F 1 "D" H 5800 2224 50  0000 C CNN
F 2 "" H 5800 2350 50  0001 C CNN
F 3 "~" H 5800 2350 50  0001 C CNN
	1    5800 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 2700 5950 2350
Wire Wire Line
	5950 2350 6000 2350
Connection ~ 5950 2350
Wire Wire Line
	5650 2350 5650 3550
Wire Wire Line
	5650 3550 5550 3550
Text GLabel 5950 3000 3    50   Input ~ 0
gnd
$Comp
L Charger-rescue:1N4007-1N4007 D2
U 1 1 603A53B2
P 2600 2950
F 0 "D2" H 2600 3167 50  0000 C CNN
F 1 "1N4007" H 2600 3076 50  0000 C CNN
F 2 "DIOAD1060W80L520D270" H 2600 2950 50  0001 L BNN
F 3 "" H 2600 2950 50  0001 L BNN
F 4 "IPC2222A" H 2600 2950 50  0001 L BNN "STANDARD"
F 5 "G" H 2600 2950 50  0001 L BNN "PARTREV"
F 6 "ON Semiconductor" H 2600 2950 50  0001 L BNN "MANUFACTURER"
	1    2600 2950
	0    1    1    0   
$EndComp
$Comp
L Charger-rescue:1N4148-1N4148 D3
U 1 1 603A5D54
P 3050 3150
F 0 "D3" H 3000 3367 50  0000 C CNN
F 1 "1N4148" H 3000 3276 50  0000 C CNN
F 2 "" H 3050 3150 50  0001 C CNN
F 3 "" H 3050 3150 50  0001 L BNN
	1    3050 3150
	-1   0    0    1   
$EndComp
Connection ~ 2600 2750
Wire Wire Line
	2600 2750 2600 2800
Text GLabel 1000 1800 1    50   Input ~ 0
AC1
Text GLabel 1000 2400 3    50   Input ~ 0
AC2
Wire Wire Line
	1800 6650 1850 6650
$Comp
L LT3798MPMSETRPBF:LT3798MPMSETRPBF U3
U 1 1 60382C44
P 1800 5950
F 0 "U3" H 3200 6315 50  0000 C CNN
F 1 "LT3798MPMSETRPBF" H 3200 6224 50  0000 C CNN
F 2 "MSOP-16_MSE" H 1800 5950 50  0001 L BNN
F 3 "" H 1800 5950 50  0001 L BNN
F 4 "lt3798mpmse#trpbf" H 1800 5950 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
F 5 "LinearTech" H 1800 5950 50  0001 L BNN "VENDOR"
	1    1800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4650 6750 4650
Text GLabel 6750 5300 3    50   Input ~ 0
Stat1
Wire Wire Line
	6750 5300 6750 5100
Connection ~ 6750 4650
Wire Wire Line
	6750 4650 7200 4650
$Comp
L Device:R R1
U 1 1 60388EA4
P 6750 4950
F 0 "R1" H 6820 4996 50  0000 L CNN
F 1 "100k" H 6820 4905 50  0000 L CNN
F 2 "" V 6680 4950 50  0001 C CNN
F 3 "~" H 6750 4950 50  0001 C CNN
	1    6750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4800 6750 4650
Wire Wire Line
	6600 2350 6850 2350
Text GLabel 6850 3050 2    50   Input ~ 0
Stat2
Wire Wire Line
	6850 3050 6850 2800
Connection ~ 6850 2350
Wire Wire Line
	6850 2350 7250 2350
$Comp
L Device:R R2
U 1 1 6038D249
P 6850 2650
F 0 "R2" H 6920 2696 50  0000 L CNN
F 1 "100k" H 6920 2605 50  0000 L CNN
F 2 "" V 6780 2650 50  0001 C CNN
F 3 "~" H 6850 2650 50  0001 C CNN
	1    6850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2500 6850 2350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60396C25
P 8650 2350
F 0 "#FLG0101" H 8650 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 8650 2523 50  0000 C CNN
F 2 "" H 8650 2350 50  0001 C CNN
F 3 "~" H 8650 2350 50  0001 C CNN
	1    8650 2350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60397240
P 9100 1550
F 0 "#FLG0102" H 9100 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 9100 1723 50  0000 C CNN
F 2 "" H 9100 1550 50  0001 C CNN
F 3 "~" H 9100 1550 50  0001 C CNN
	1    9100 1550
	-1   0    0    1   
$EndComp
$EndSCHEMATC
