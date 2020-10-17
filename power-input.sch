EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "Sailor Hat for ESP32"
Date ""
Rev "0.1.0"
Comp "Hat Laboratories"
Comment1 "https://creativecommons.org/licenses/by-sa/4.0"
Comment2 "To view a copy of this license, visit "
Comment3 "Sailor Hat for ESP32 is licensed under CC BY-SA 4.0."
Comment4 ""
$EndDescr
$Comp
L Device:Polyfuse F?
U 1 1 5E467AC2
P 3850 2100
AR Path="/5E467AC2" Ref="F?"  Part="1" 
AR Path="/5C3476D8/5E467AC2" Ref="F?"  Part="1" 
AR Path="/5E460E30/5E467AC2" Ref="F?"  Part="1" 
AR Path="/5F6FAF6E/5E467AC2" Ref="F301"  Part="1" 
F 0 "F301" V 3653 2100 50  0000 C CNN
F 1 "FSMD012-1206-R" V 3744 2100 50  0000 C CNN
F 2 "" V 3780 2100 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
F 4 "" H 3850 2100 50  0001 C CNN "LCSC"
	1    3850 2100
	0    1    1    0   
$EndComp
Text Label 5250 2100 0    50   ~ 0
Vin_fused
$Comp
L power:GND #PWR?
U 1 1 5E467AC9
P 5400 2800
AR Path="/5E467AC9" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5E467AC9" Ref="#PWR?"  Part="1" 
AR Path="/5E460E30/5E467AC9" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5E467AC9" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 5400 2550 50  0001 C CNN
F 1 "GND" H 5405 2627 50  0000 C CNN
F 2 "" H 5400 2800 50  0001 C CNN
F 3 "" H 5400 2800 50  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2550 5400 2650
Connection ~ 5400 2650
Wire Wire Line
	5400 2650 5400 2800
$Comp
L Transistor_FET:Si2371EDS Q?
U 1 1 5E467ADC
P 6550 2200
AR Path="/5E467ADC" Ref="Q?"  Part="1" 
AR Path="/5E460E30/5E467ADC" Ref="Q?"  Part="1" 
AR Path="/5F6FAF6E/5E467ADC" Ref="Q301"  Part="1" 
F 0 "Q301" V 6892 2200 50  0000 C CNN
F 1 "WST03P06" V 6801 2200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 2125 50  0001 L CIN
F 3 "" H 6550 2200 50  0001 L CNN
F 4 "C105166" H 6550 2200 50  0001 C CNN "LCSC"
	1    6550 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5E467AE2
P 6800 2250
AR Path="/5E467AE2" Ref="D?"  Part="1" 
AR Path="/5E460E30/5E467AE2" Ref="D?"  Part="1" 
AR Path="/5F6FAF6E/5E467AE2" Ref="D303"  Part="1" 
F 0 "D303" V 6754 2329 50  0000 L CNN
F 1 "MM3Z8V2" V 6845 2329 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 6800 2250 50  0001 C CNN
F 3 "" H 6800 2250 50  0001 C CNN
F 4 "C118606" H 6800 2250 50  0001 C CNN "LCSC"
	1    6800 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E467AE8
P 6550 2650
AR Path="/5E467AE8" Ref="R?"  Part="1" 
AR Path="/5E460E30/5E467AE8" Ref="R?"  Part="1" 
AR Path="/5F6FAF6E/5E467AE8" Ref="R301"  Part="1" 
F 0 "R301" H 6620 2696 50  0000 L CNN
F 1 "100k" H 6620 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6480 2650 50  0001 C CNN
F 3 "~" H 6550 2650 50  0001 C CNN
F 4 "C25803" H 6550 2650 50  0001 C CNN "LCSC"
	1    6550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2500 6550 2450
Wire Wire Line
	6550 2450 6800 2450
Wire Wire Line
	6800 2450 6800 2400
Connection ~ 6550 2450
Wire Wire Line
	6550 2450 6550 2400
$Comp
L power:GND #PWR?
U 1 1 5E467AF3
P 6550 2800
AR Path="/5E467AF3" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5E467AF3" Ref="#PWR?"  Part="1" 
AR Path="/5E460E30/5E467AF3" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5E467AF3" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 6550 2550 50  0001 C CNN
F 1 "GND" H 6555 2627 50  0000 C CNN
F 2 "" H 6550 2800 50  0001 C CNN
F 3 "" H 6550 2800 50  0001 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E467AF9
P 5750 2100
AR Path="/5E467AF9" Ref="#FLG?"  Part="1" 
AR Path="/5E460E30/5E467AF9" Ref="#FLG?"  Part="1" 
AR Path="/5F6FAF6E/5E467AF9" Ref="#FLG0303"  Part="1" 
F 0 "#FLG0303" H 5750 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 2273 50  0000 C CNN
F 2 "" H 5750 2100 50  0001 C CNN
F 3 "~" H 5750 2100 50  0001 C CNN
	1    5750 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 2100 6800 2100
Connection ~ 6800 2100
Wire Wire Line
	6800 2100 7300 2100
Wire Wire Line
	4000 2100 4300 2100
Wire Wire Line
	5400 2250 5400 2100
Connection ~ 5400 2100
Wire Wire Line
	5400 2100 5750 2100
Wire Wire Line
	3700 2100 3500 2100
Text Notes 6050 1750 0    50   ~ 0
Reverse polarity protection
Connection ~ 5750 2100
Wire Wire Line
	5750 2100 6350 2100
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E475BD3
P 5400 2650
AR Path="/5E475BD3" Ref="#FLG?"  Part="1" 
AR Path="/5E460E30/5E475BD3" Ref="#FLG?"  Part="1" 
AR Path="/5F6FAF6E/5E475BD3" Ref="#FLG0302"  Part="1" 
F 0 "#FLG0302" H 5400 2725 50  0001 C CNN
F 1 "PWR_FLAG" V 5400 2778 50  0000 L CNN
F 2 "" H 5400 2650 50  0001 C CNN
F 3 "~" H 5400 2650 50  0001 C CNN
	1    5400 2650
	0    1    -1   0   
$EndComp
Text Label 6550 2450 2    50   ~ 0
RP_G
$Comp
L power:GND #PWR?
U 1 1 5CA62D53
P 3850 5100
AR Path="/5CA62D53" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5CA62D53" Ref="#PWR?"  Part="1" 
AR Path="/5CA65CC5/5CA62D53" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D53" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 3850 4850 50  0001 C CNN
F 1 "GND" H 3855 4927 50  0000 C CNN
F 2 "" H 3850 5100 50  0001 C CNN
F 3 "" H 3850 5100 50  0001 C CNN
	1    3850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CA62D71
P 5450 4250
AR Path="/5C3476D8/5CA62D71" Ref="C?"  Part="1" 
AR Path="/5CA65CC5/5CA62D71" Ref="C?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D71" Ref="C303"  Part="1" 
F 0 "C303" V 5198 4250 50  0000 C CNN
F 1 "100nF" V 5289 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 4100 50  0001 C CNN
F 3 "~" H 5450 4250 50  0001 C CNN
F 4 "C14663" H 5450 4250 50  0001 C CNN "LCSC"
	1    5450 4250
	0    1    1    0   
$EndComp
$Comp
L Device:L L?
U 1 1 5CA62D7A
P 6400 4250
AR Path="/5C3476D8/5CA62D7A" Ref="L?"  Part="1" 
AR Path="/5CA65CC5/5CA62D7A" Ref="L?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D7A" Ref="L301"  Part="1" 
F 0 "L301" V 6590 4250 50  0000 C CNN
F 1 "MWSA0518S-100MT" V 6499 4250 50  0000 C CNN
F 2 "" H 6400 4250 50  0001 C CNN
F 3 "~" H 6400 4250 50  0001 C CNN
F 4 "" V 6400 4250 50  0001 C CNN "URL"
F 5 "" V 6400 4250 50  0001 C CNN "Part"
F 6 "C408349" H 6400 4250 50  0001 C CNN "LCSC"
	1    6400 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5CA62D82
P 6800 4400
AR Path="/5C3476D8/5CA62D82" Ref="C?"  Part="1" 
AR Path="/5CA65CC5/5CA62D82" Ref="C?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D82" Ref="C304"  Part="1" 
F 0 "C304" H 6915 4446 50  0000 L CNN
F 1 "22uF/6.3V" H 6915 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 4250 50  0001 C CNN
F 3 "~" H 6800 4400 50  0001 C CNN
F 4 "Min 6.3V" H 6800 4400 50  0001 C CNN "Notes"
F 5 "C45783" H 6800 4400 50  0001 C CNN "LCSC"
	1    6800 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5CA62D98
P 6000 4400
AR Path="/5C3476D8/5CA62D98" Ref="D?"  Part="1" 
AR Path="/5CA65CC5/5CA62D98" Ref="D?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D98" Ref="D302"  Part="1" 
F 0 "D302" V 5954 4479 50  0000 L CNN
F 1 "B5819W" V 6045 4479 50  0000 L CNN
F 2 "" H 6000 4400 50  0001 C CNN
F 3 "~" H 6000 4400 50  0001 C CNN
F 4 "" V 6000 4400 50  0001 C CNN "Notes"
F 5 "C8598" H 6000 4400 50  0001 C CNN "LCSC"
	1    6000 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA62DB6
P 6000 4550
AR Path="/5CA62DB6" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5CA62DB6" Ref="#PWR?"  Part="1" 
AR Path="/5CA65CC5/5CA62DB6" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5CA62DB6" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 6000 4300 50  0001 C CNN
F 1 "GND" H 6005 4377 50  0000 C CNN
F 2 "" H 6000 4550 50  0001 C CNN
F 3 "" H 6000 4550 50  0001 C CNN
	1    6000 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA62DBE
P 6800 4550
AR Path="/5CA62DBE" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5CA62DBE" Ref="#PWR?"  Part="1" 
AR Path="/5CA65CC5/5CA62DBE" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5CA62DBE" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6800 4300 50  0001 C CNN
F 1 "GND" H 6805 4377 50  0000 C CNN
F 2 "" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4250 5800 4250
Wire Wire Line
	6000 4250 6250 4250
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CA62DDA
P 3600 4600
AR Path="/5C3476D8/5CA62DDA" Ref="#FLG?"  Part="1" 
AR Path="/5CA65CC5/5CA62DDA" Ref="#FLG?"  Part="1" 
AR Path="/5F6FAF6E/5CA62DDA" Ref="#FLG0301"  Part="1" 
F 0 "#FLG0301" H 3600 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 4774 50  0000 C CNN
F 2 "" H 3600 4600 50  0001 C CNN
F 3 "~" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4600 3600 4800
Connection ~ 3600 4800
Text Label 5550 4800 2    50   ~ 0
SW
Text Label 5850 5000 0    50   ~ 0
FB
Text Label 4900 4250 2    50   ~ 0
BS
$Comp
L power:GND #PWR?
U 1 1 5CA8A650
P 4900 5300
AR Path="/5CA8A650" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5CA8A650" Ref="#PWR?"  Part="1" 
AR Path="/5CA65CC5/5CA8A650" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5CA8A650" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 4900 5050 50  0001 C CNN
F 1 "GND" H 4905 5127 50  0000 C CNN
F 2 "" H 4900 5300 50  0001 C CNN
F 3 "" H 4900 5300 50  0001 C CNN
	1    4900 5300
	1    0    0    -1  
$EndComp
Text Notes 5850 5250 0    50   ~ 0
FB voltage divider designed to have\na 3.3V voltage at Vbuck
Wire Wire Line
	4900 4250 4900 4600
Wire Wire Line
	4900 4250 5300 4250
Wire Wire Line
	5800 4800 5200 4800
Wire Wire Line
	5800 4250 5800 4800
Wire Wire Line
	3600 4800 3850 4800
Connection ~ 3850 4800
Wire Wire Line
	3850 4800 4500 4800
Wire Wire Line
	3350 4800 3600 4800
Wire Wire Line
	4600 5000 4500 5000
Wire Wire Line
	4500 5000 4500 4800
Connection ~ 4500 4800
Wire Wire Line
	4500 4800 4600 4800
Wire Wire Line
	4900 5300 4900 5200
Wire Wire Line
	6000 4250 5800 4250
Connection ~ 6000 4250
Connection ~ 5800 4250
$Comp
L Device:C C?
U 1 1 5CA62D4C
P 3850 4950
AR Path="/5C3476D8/5CA62D4C" Ref="C?"  Part="1" 
AR Path="/5CA65CC5/5CA62D4C" Ref="C?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D4C" Ref="C301"  Part="1" 
F 0 "C301" H 3965 4996 50  0000 L CNN
F 1 "10uF/50V" H 3965 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3888 4800 50  0001 C CNN
F 3 "~" H 3850 4950 50  0001 C CNN
F 4 "50V" H 3850 4950 50  0001 C CNN "Notes"
F 5 "C13585" H 3850 4950 50  0001 C CNN "LCSC"
	1    3850 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0310
U 1 1 5F80ACBB
P 7950 4250
F 0 "#PWR0310" H 7950 4100 50  0001 C CNN
F 1 "+3.3V" H 7965 4423 50  0000 C CNN
F 2 "" H 7950 4250 50  0001 C CNN
F 3 "" H 7950 4250 50  0001 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
Text Label 7300 2100 0    50   ~ 0
Vin_protected
Text Label 3350 4800 2    50   ~ 0
Vin_protected
Connection ~ 6800 4250
Wire Wire Line
	6550 4250 6800 4250
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5FBA176F
P 4450 2100
AR Path="/5F89C30A/5FBA176F" Ref="FB?"  Part="1" 
AR Path="/5F6FAF6E/5FBA176F" Ref="FB301"  Part="1" 
F 0 "FB301" V 4176 2100 50  0000 C CNN
F 1 "GZ2012D601TF" V 4267 2100 50  0000 C CNN
F 2 "" V 4380 2100 50  0001 C CNN
F 3 "~" H 4450 2100 50  0001 C CNN
	1    4450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2100 4800 2100
$Comp
L Device:C C302
U 1 1 5FBA3E31
P 4800 2400
F 0 "C302" H 4915 2446 50  0000 L CNN
F 1 "10nF/50V" H 4915 2355 50  0000 L CNN
F 2 "" H 4838 2250 50  0001 C CNN
F 3 "~" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2250 4800 2100
Wire Wire Line
	4800 2550 4800 2800
$Comp
L power:GND #PWR?
U 1 1 5FBA55E7
P 4800 2800
AR Path="/5FBA55E7" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5FBA55E7" Ref="#PWR?"  Part="1" 
AR Path="/5E460E30/5FBA55E7" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5FBA55E7" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 4800 2550 50  0001 C CNN
F 1 "GND" H 4805 2627 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
Connection ~ 4800 2100
Wire Wire Line
	4800 2100 5400 2100
$Comp
L SH-ESP32:SY8401 U301
U 1 1 5FBA7A1D
P 4900 4950
F 0 "U301" H 4950 5400 50  0000 L CNN
F 1 "SY8401" H 5100 5300 50  0000 C CNN
F 2 "" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
Text Label 7100 4250 0    50   ~ 0
Vout
Wire Wire Line
	6800 4250 7350 4250
Wire Wire Line
	7350 4250 7950 4250
Connection ~ 7350 4250
Connection ~ 7350 5000
Wire Wire Line
	7350 5000 7350 5200
Wire Wire Line
	7350 4850 7350 5000
Wire Wire Line
	5200 5000 7350 5000
$Comp
L Device:R R?
U 1 1 5CA62D90
P 7350 4700
AR Path="/5C3476D8/5CA62D90" Ref="R?"  Part="1" 
AR Path="/5CA65CC5/5CA62D90" Ref="R?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D90" Ref="R302"  Part="1" 
F 0 "R302" H 7500 4750 50  0000 C CNN
F 1 "115k" H 7500 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 4700 50  0001 C CNN
F 3 "~" H 7350 4700 50  0001 C CNN
F 4 "C25747" H 7350 4700 50  0001 C CNN "LCSC"
	1    7350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4250 7350 4550
Wire Wire Line
	7350 5600 7350 5500
$Comp
L power:GND #PWR?
U 1 1 5CA62DC4
P 7350 5600
AR Path="/5CA62DC4" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5CA62DC4" Ref="#PWR?"  Part="1" 
AR Path="/5CA65CC5/5CA62DC4" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5CA62DC4" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 7350 5350 50  0001 C CNN
F 1 "GND" H 7355 5427 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CA62D89
P 7350 5350
AR Path="/5C3476D8/5CA62D89" Ref="R?"  Part="1" 
AR Path="/5CA65CC5/5CA62D89" Ref="R?"  Part="1" 
AR Path="/5F6FAF6E/5CA62D89" Ref="R303"  Part="1" 
F 0 "R303" H 7420 5396 50  0000 L CNN
F 1 "25.5k" H 7420 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 5350 50  0001 C CNN
F 3 "~" H 7350 5350 50  0001 C CNN
F 4 "C26970" H 7350 5350 50  0001 C CNN "LCSC"
	1    7350 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C305
U 1 1 5FBAEB38
P 7750 4400
F 0 "C305" H 7865 4446 50  0000 L CNN
F 1 "10nF/50V" H 7865 4355 50  0000 L CNN
F 2 "" H 7788 4250 50  0001 C CNN
F 3 "~" H 7750 4400 50  0001 C CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBAEB3F
P 7750 4550
AR Path="/5FBAEB3F" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5FBAEB3F" Ref="#PWR?"  Part="1" 
AR Path="/5E460E30/5FBAEB3F" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5FBAEB3F" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 7750 4300 50  0001 C CNN
F 1 "GND" H 7755 4377 50  0000 C CNN
F 2 "" H 7750 4550 50  0001 C CNN
F 3 "" H 7750 4550 50  0001 C CNN
	1    7750 4550
	1    0    0    -1  
$EndComp
Text Label 3500 2100 2    50   ~ 0
Vin
$Comp
L Connector_Generic:Conn_01x02 J301
U 1 1 5F8B6C12
P 2100 3250
F 0 "J301" H 2018 2925 50  0000 C CNN
F 1 "Conn_01x02" H 2018 3016 50  0000 C CNN
F 2 "" H 2100 3250 50  0001 C CNN
F 3 "~" H 2100 3250 50  0001 C CNN
	1    2100 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8B7EDA
P 2400 3350
AR Path="/5F8B7EDA" Ref="#PWR?"  Part="1" 
AR Path="/5C3476D8/5F8B7EDA" Ref="#PWR?"  Part="1" 
AR Path="/5E460E30/5F8B7EDA" Ref="#PWR?"  Part="1" 
AR Path="/5F6FAF6E/5F8B7EDA" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 2400 3100 50  0001 C CNN
F 1 "GND" H 2405 3177 50  0000 C CNN
F 2 "" H 2400 3350 50  0001 C CNN
F 3 "" H 2400 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3350 2400 3250
Wire Wire Line
	2400 3250 2300 3250
Wire Wire Line
	2400 3150 2300 3150
Text HLabel 2400 3150 2    50   Input ~ 0
Vin
$Comp
L Device:D_TVS D?
U 1 1 5F8DD969
P 5400 2400
AR Path="/5C348474/5F8DD969" Ref="D?"  Part="1" 
AR Path="/5E460E30/5F8DD969" Ref="D?"  Part="1" 
AR Path="/5F6FAF6E/5F8DD969" Ref="D301"  Part="1" 
AR Path="/5F733BA4/5F8DD969" Ref="D?"  Part="1" 
F 0 "D301" V 5354 2479 50  0000 L CNN
F 1 "SMBJ33CA" V 5445 2479 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 5400 2400 50  0001 C CNN
F 3 "~" H 5400 2400 50  0001 C CNN
F 4 "C143164" H 5400 2400 50  0001 C CNN "LCSC"
	1    5400 2400
	0    1    1    0   
$EndComp
Text Notes 3350 1750 0    50   ~ 0
FIXME: Verify that the fuse\nis sufficiently big
$EndSCHEMATC
