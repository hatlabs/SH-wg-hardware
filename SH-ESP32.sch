EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "Sailor Hat for ESP32"
Date ""
Rev "0.1.0"
Comp "Hat Laboratories"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 950  950  1300 1250
U 5F6FAF6E
F0 "Power input" 50
F1 "power-input.sch" 50
F2 "Vin" I L 950 1150 50 
$EndSheet
$Comp
L RF_Module:ESP32-WROOM-32D U?
U 1 1 5F72E98B
P 4300 4600
F 0 "U?" H 4400 6100 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4750 6000 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4300 3100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 4000 4650 50  0001 C CNN
	1    4300 4600
	1    0    0    -1  
$EndComp
$Sheet
S 9300 950  1250 1300
U 5F733BA4
F0 "CAN bus" 50
F1 "canbus.sch" 50
F2 "CAN_RX" I L 9300 1150 50 
F3 "CAN_TX" I L 9300 1400 50 
$EndSheet
$Comp
L Switch:SW_Push SW?
U 1 1 5F823F67
P 1950 5150
F 0 "SW?" H 1950 5435 50  0000 C CNN
F 1 "SW_Push" H 1950 5344 50  0000 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "~" H 1950 5350 50  0001 C CNN
	1    1950 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F8255CE
P 1950 6000
F 0 "SW?" H 1950 6285 50  0000 C CNN
F 1 "SW_Push" H 1950 6194 50  0000 C CNN
F 2 "" H 1950 6200 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6000
	1    0    0    -1  
$EndComp
Text Notes 2450 5150 0    50   ~ 0
Boot
Text Notes 2450 6000 0    50   ~ 0
Reset
$Sheet
S 2650 950  1300 1250
U 5F89C30A
F0 "USB" 50
F1 "USB.sch" 50
F2 "TXD" I R 3950 1100 50 
F3 "RXD" I R 3950 1300 50 
F4 "EN" I R 3950 1900 50 
F5 "BOOT" I R 3950 2000 50 
$EndSheet
Text Label 2300 5150 0    50   ~ 0
IO0
Text Label 2300 6000 0    50   ~ 0
EN
$Comp
L Device:C_Small C?
U 1 1 5F8BF78C
P 1950 5450
F 0 "C?" V 1721 5450 50  0000 C CNN
F 1 "0.1u/50V" V 1812 5450 50  0000 C CNN
F 2 "" H 1950 5450 50  0001 C CNN
F 3 "~" H 1950 5450 50  0001 C CNN
	1    1950 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F8C0194
P 1950 6300
F 0 "C?" V 1721 6300 50  0000 C CNN
F 1 "0.1u/50V" V 1812 6300 50  0000 C CNN
F 2 "" H 1950 6300 50  0001 C CNN
F 3 "~" H 1950 6300 50  0001 C CNN
	1    1950 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 5150 2200 5150
Wire Wire Line
	2300 6000 2200 6000
Wire Wire Line
	2200 6000 2200 6300
Wire Wire Line
	2200 6300 2050 6300
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2150 6000
Wire Wire Line
	2050 5450 2200 5450
Wire Wire Line
	2200 5450 2200 5150
Connection ~ 2200 5150
Wire Wire Line
	2200 5150 2150 5150
$Comp
L power:GND #PWR?
U 1 1 5F8C3BED
P 1600 5550
F 0 "#PWR?" H 1600 5300 50  0001 C CNN
F 1 "GND" H 1605 5377 50  0000 C CNN
F 2 "" H 1600 5550 50  0001 C CNN
F 3 "" H 1600 5550 50  0001 C CNN
	1    1600 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8C4304
P 1600 6400
F 0 "#PWR?" H 1600 6150 50  0001 C CNN
F 1 "GND" H 1605 6227 50  0000 C CNN
F 2 "" H 1600 6400 50  0001 C CNN
F 3 "" H 1600 6400 50  0001 C CNN
	1    1600 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6400 1600 6300
Wire Wire Line
	1600 6000 1750 6000
Wire Wire Line
	1850 6300 1600 6300
Connection ~ 1600 6300
Wire Wire Line
	1600 6300 1600 6000
Wire Wire Line
	1600 5550 1600 5450
Wire Wire Line
	1600 5150 1750 5150
Wire Wire Line
	1850 5450 1600 5450
Connection ~ 1600 5450
Wire Wire Line
	1600 5450 1600 5150
$Comp
L Device:R R?
U 1 1 5F8EF57C
P 4400 1100
AR Path="/5F89C30A/5F8EF57C" Ref="R?"  Part="1" 
AR Path="/5F8EF57C" Ref="R?"  Part="1" 
F 0 "R?" V 4300 1050 50  0000 C CNN
F 1 "0R" V 4300 1200 50  0000 C CNN
F 2 "" V 4330 1100 50  0001 C CNN
F 3 "~" H 4400 1100 50  0001 C CNN
	1    4400 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8EF582
P 4400 1300
AR Path="/5F89C30A/5F8EF582" Ref="R?"  Part="1" 
AR Path="/5F8EF582" Ref="R?"  Part="1" 
F 0 "R?" V 4300 1250 50  0000 C CNN
F 1 "0R" V 4300 1400 50  0000 C CNN
F 2 "" V 4330 1300 50  0001 C CNN
F 3 "~" H 4400 1300 50  0001 C CNN
	1    4400 1300
	0    1    1    0   
$EndComp
Text Label 4750 1100 0    50   ~ 0
TXD0
Text Label 4750 1300 0    50   ~ 0
RXD0
Wire Wire Line
	4550 1100 4750 1100
Wire Wire Line
	4750 1300 4550 1300
Text Label 3700 3400 2    50   ~ 0
EN
Text Label 4900 3400 0    50   ~ 0
IO0
Text Label 4050 2000 0    50   ~ 0
IO0
Text Label 4050 1900 0    50   ~ 0
EN
Wire Wire Line
	4050 2000 3950 2000
Wire Wire Line
	4050 1900 3950 1900
Text Label 4900 3500 0    50   ~ 0
TXD0
Text Label 4900 3700 0    50   ~ 0
RXD0
$Comp
L power:+3.3V #PWR?
U 1 1 5F8F4A57
P 4300 2650
F 0 "#PWR?" H 4300 2500 50  0001 C CNN
F 1 "+3.3V" H 4315 2823 50  0000 C CNN
F 2 "" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F8F5EF1
P 2550 3450
F 0 "R?" H 2620 3496 50  0000 L CNN
F 1 "10k" H 2620 3405 50  0000 L CNN
F 2 "" V 2480 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
	1    2550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F8F65FF
P 2550 3850
F 0 "C?" H 2665 3896 50  0000 L CNN
F 1 "100n" H 2665 3805 50  0000 L CNN
F 2 "" H 2588 3700 50  0001 C CNN
F 3 "~" H 2550 3850 50  0001 C CNN
	1    2550 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8F6B5E
P 2550 4100
F 0 "#PWR?" H 2550 3850 50  0001 C CNN
F 1 "GND" H 2555 3927 50  0000 C CNN
F 2 "" H 2550 4100 50  0001 C CNN
F 3 "" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4100 2550 4000
Wire Wire Line
	2550 3700 2550 3650
Wire Wire Line
	2550 3300 2550 3200
Wire Wire Line
	2900 3650 2550 3650
Connection ~ 2550 3650
Wire Wire Line
	2550 3650 2550 3600
Text Label 2900 3650 0    50   ~ 0
EN
$Comp
L power:GND #PWR?
U 1 1 5F8F970B
P 4300 6000
F 0 "#PWR?" H 4300 5750 50  0001 C CNN
F 1 "GND" H 4305 5827 50  0000 C CNN
F 2 "" H 4300 6000 50  0001 C CNN
F 3 "" H 4300 6000 50  0001 C CNN
	1    4300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F90065C
P 2550 3200
F 0 "#PWR?" H 2550 3050 50  0001 C CNN
F 1 "+3.3V" H 2565 3373 50  0000 C CNN
F 2 "" H 2550 3200 50  0001 C CNN
F 3 "" H 2550 3200 50  0001 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
Text Label 3700 3600 2    50   ~ 0
SENSOR_VP
Text Label 3700 3700 2    50   ~ 0
SENSOR_VN
Text Label 3700 4600 2    50   ~ 0
SDO
Text Label 3700 4700 2    50   ~ 0
SDI
Text Label 3700 4800 2    50   ~ 0
SHD
Text Label 3700 4900 2    50   ~ 0
SWP
Text Label 3700 5000 2    50   ~ 0
SCK
Text Label 3700 5100 2    50   ~ 0
SCS
Text Label 4900 3600 0    50   ~ 0
IO2
Text Label 4900 3800 0    50   ~ 0
IO4
Text Label 4900 3900 0    50   ~ 0
IO5
Text Label 4900 4000 0    50   ~ 0
IO12
Text Label 4900 4100 0    50   ~ 0
IO13
Text Label 4900 4200 0    50   ~ 0
IO14
Text Label 4900 4300 0    50   ~ 0
IO15
Text Label 4900 4400 0    50   ~ 0
IO16
Text Label 4900 4500 0    50   ~ 0
IO17
Text Label 4900 4600 0    50   ~ 0
IO18
Text Label 4900 4700 0    50   ~ 0
IO19
Text Label 4900 4800 0    50   ~ 0
IO21
Text Label 4900 4900 0    50   ~ 0
IO22
Text Label 4900 5000 0    50   ~ 0
IO23
Text Label 4900 5100 0    50   ~ 0
IO25
Text Label 4900 5200 0    50   ~ 0
IO26
Text Label 4900 5300 0    50   ~ 0
IO27
Text Label 4900 5400 0    50   ~ 0
IO32
Text Label 4900 5500 0    50   ~ 0
IO33
Text Label 4900 5600 0    50   ~ 0
IO34
Text Label 4900 5700 0    50   ~ 0
IO35
$Comp
L power:+3.3V #PWR?
U 1 1 5F906152
P 7550 5150
F 0 "#PWR?" H 7550 5000 50  0001 C CNN
F 1 "+3.3V" V 7565 5278 50  0000 L CNN
F 2 "" H 7550 5150 50  0001 C CNN
F 3 "" H 7550 5150 50  0001 C CNN
	1    7550 5150
	0    1    1    0   
$EndComp
Text Label 6500 3750 2    50   ~ 0
EN
Text Label 6500 3850 2    50   ~ 0
SENSOR_VP
Text Label 6500 3950 2    50   ~ 0
SENSOR_VN
Text Label 6500 4050 2    50   ~ 0
IO34
Text Label 6500 4150 2    50   ~ 0
IO35
Text Label 6500 4250 2    50   ~ 0
IO32
Text Label 6500 4350 2    50   ~ 0
IO33
Text Label 6500 4450 2    50   ~ 0
IO25
Text Label 6500 4550 2    50   ~ 0
IO26
Text Label 6500 4650 2    50   ~ 0
IO27
Text Label 6500 4750 2    50   ~ 0
IO14
Text Label 6500 4850 2    50   ~ 0
IO12
Text Label 6500 4950 2    50   ~ 0
IO13
Text Label 6500 5150 2    50   ~ 0
EXT_5V
$Comp
L power:GND #PWR?
U 1 1 5F90AFF8
P 8000 5050
F 0 "#PWR?" H 8000 4800 50  0001 C CNN
F 1 "GND" H 8005 4877 50  0000 C CNN
F 2 "" H 8000 5050 50  0001 C CNN
F 3 "" H 8000 5050 50  0001 C CNN
	1    8000 5050
	1    0    0    -1  
$EndComp
Text Label 7550 3750 0    50   ~ 0
IO23
Text Label 7550 3850 0    50   ~ 0
IO22
Text Label 7550 3950 0    50   ~ 0
TXD0
Text Label 7550 4050 0    50   ~ 0
RXD0
Text Label 7550 4150 0    50   ~ 0
IO21
Text Label 7550 4250 0    50   ~ 0
IO19
Text Label 7550 4350 0    50   ~ 0
IO18
Text Label 7550 4450 0    50   ~ 0
IO5
Text Label 7550 4550 0    50   ~ 0
IO17
Text Label 7550 4650 0    50   ~ 0
IO16
Text Label 7550 4750 0    50   ~ 0
IO4
Text Label 7550 4850 0    50   ~ 0
IO2
Text Label 7550 4950 0    50   ~ 0
IO15
$Comp
L Connector_Generic:Conn_01x15 J?
U 1 1 5F9102DC
P 6700 4450
F 0 "J?" H 6650 5350 50  0000 L CNN
F 1 "Conn_01x15" H 6450 5250 50  0000 L CNN
F 2 "" H 6700 4450 50  0001 C CNN
F 3 "~" H 6700 4450 50  0001 C CNN
	1    6700 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x15 J?
U 1 1 5F911111
P 7350 4450
F 0 "J?" H 7350 5350 50  0000 C CNN
F 1 "Conn_01x15" H 7350 5250 50  0000 C CNN
F 2 "" H 7350 4450 50  0001 C CNN
F 3 "~" H 7350 4450 50  0001 C CNN
	1    7350 4450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F924E32
P 6150 5050
F 0 "#PWR?" H 6150 4800 50  0001 C CNN
F 1 "GND" H 6155 4877 50  0000 C CNN
F 2 "" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5050 6500 5050
Wire Wire Line
	8000 5050 7550 5050
$Comp
L Device:C C?
U 1 1 5F96C6BA
P 3950 2900
AR Path="/5C3476D8/5F96C6BA" Ref="C?"  Part="1" 
AR Path="/5CA65CC5/5F96C6BA" Ref="C?"  Part="1" 
AR Path="/5F6FAF6E/5F96C6BA" Ref="C?"  Part="1" 
AR Path="/5F96C6BA" Ref="C?"  Part="1" 
F 0 "C?" H 4065 2946 50  0000 L CNN
F 1 "22uF/6.3V" H 4065 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3988 2750 50  0001 C CNN
F 3 "~" H 3950 2900 50  0001 C CNN
F 4 "Min 6.3V" H 3950 2900 50  0001 C CNN "Notes"
F 5 "C45783" H 3950 2900 50  0001 C CNN "LCSC"
	1    3950 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2650 4300 2700
Wire Wire Line
	4300 2700 3950 2700
Wire Wire Line
	3950 2700 3950 2750
Connection ~ 4300 2700
Wire Wire Line
	4300 2700 4300 3200
$Comp
L power:GND #PWR?
U 1 1 5F96F4F2
P 3950 3050
F 0 "#PWR?" H 3950 2800 50  0001 C CNN
F 1 "GND" H 3955 2877 50  0000 C CNN
F 2 "" H 3950 3050 50  0001 C CNN
F 3 "" H 3950 3050 50  0001 C CNN
	1    3950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F971730
P 1900 3850
F 0 "D?" V 1939 3732 50  0000 R CNN
F 1 "RED LED" V 1848 3732 50  0000 R CNN
F 2 "" H 1900 3850 50  0001 C CNN
F 3 "~" H 1900 3850 50  0001 C CNN
	1    1900 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F972F65
P 1900 3450
F 0 "R?" H 1970 3496 50  0000 L CNN
F 1 "2k" H 1970 3405 50  0000 L CNN
F 2 "" V 1830 3450 50  0001 C CNN
F 3 "~" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F9732D9
P 1900 3200
F 0 "#PWR?" H 1900 3050 50  0001 C CNN
F 1 "+3.3V" H 1915 3373 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3200 1900 3300
Wire Wire Line
	1900 3600 1900 3700
$Comp
L power:GND #PWR?
U 1 1 5F975BE0
P 1900 4100
F 0 "#PWR?" H 1900 3850 50  0001 C CNN
F 1 "GND" H 1905 3927 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4100 1900 4000
$Comp
L Device:LED D?
U 1 1 5F981749
P 1300 3850
F 0 "D?" V 1339 3732 50  0000 R CNN
F 1 "BLUE LED" V 1248 3732 50  0000 R CNN
F 2 "" H 1300 3850 50  0001 C CNN
F 3 "~" H 1300 3850 50  0001 C CNN
	1    1300 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F98174F
P 1300 3450
F 0 "R?" H 1370 3496 50  0000 L CNN
F 1 "2k" H 1370 3405 50  0000 L CNN
F 2 "" V 1230 3450 50  0001 C CNN
F 3 "~" H 1300 3450 50  0001 C CNN
	1    1300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3200 1300 3300
Wire Wire Line
	1300 3600 1300 3700
$Comp
L power:GND #PWR?
U 1 1 5F98175D
P 1300 4100
F 0 "#PWR?" H 1300 3850 50  0001 C CNN
F 1 "GND" H 1305 3927 50  0000 C CNN
F 2 "" H 1300 4100 50  0001 C CNN
F 3 "" H 1300 4100 50  0001 C CNN
	1    1300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4100 1300 4000
Text Label 1300 3200 0    50   ~ 0
IO0
$Comp
L Device:R R?
U 1 1 5F99A98A
P 8850 1400
AR Path="/5F89C30A/5F99A98A" Ref="R?"  Part="1" 
AR Path="/5F99A98A" Ref="R?"  Part="1" 
F 0 "R?" V 8750 1350 50  0000 C CNN
F 1 "0R" V 8750 1500 50  0000 C CNN
F 2 "" V 8780 1400 50  0001 C CNN
F 3 "~" H 8850 1400 50  0001 C CNN
	1    8850 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1400 8700 1400
$Comp
L Device:R R?
U 1 1 5F99A994
P 8850 1150
AR Path="/5F89C30A/5F99A994" Ref="R?"  Part="1" 
AR Path="/5F99A994" Ref="R?"  Part="1" 
F 0 "R?" V 8750 1100 50  0000 C CNN
F 1 "0R" V 8750 1250 50  0000 C CNN
F 2 "" V 8780 1150 50  0001 C CNN
F 3 "~" H 8850 1150 50  0001 C CNN
	1    8850 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1150 8700 1150
Text Label 8500 1400 2    50   ~ 0
IO18
Text Label 8500 1150 2    50   ~ 0
IO19
$Sheet
S 9300 2600 1250 750 
U 5F9BE197
F0 "I2C" 50
F1 "I2C.sch" 50
F2 "SDA" I L 9300 2750 50 
F3 "SCL" I L 9300 2900 50 
$EndSheet
$Sheet
S 9300 3700 1250 750 
U 5FAEF03B
F0 "Onewire" 50
F1 "onewire.sch" 50
F2 "DQ" I L 9300 3850 50 
$EndSheet
$Comp
L Device:R R?
U 1 1 5FB25146
P 8950 3850
AR Path="/5F89C30A/5FB25146" Ref="R?"  Part="1" 
AR Path="/5FB25146" Ref="R?"  Part="1" 
AR Path="/5FAEF03B/5FB25146" Ref="R?"  Part="1" 
F 0 "R?" V 8850 3800 50  0000 C CNN
F 1 "0R" V 8850 3950 50  0000 C CNN
F 2 "" V 8880 3850 50  0001 C CNN
F 3 "~" H 8950 3850 50  0001 C CNN
	1    8950 3850
	0    1    1    0   
$EndComp
Text Label 8700 3850 2    50   ~ 0
IO4
Wire Wire Line
	8700 3850 8800 3850
$Sheet
S 9300 4800 1250 750 
U 5FB2AE13
F0 "Optocouplers" 50
F1 "optocouplers.sch" 50
F2 "IN1" I L 9300 4950 50 
F3 "OUT1" I L 9300 5200 50 
$EndSheet
Wire Wire Line
	9300 2750 9200 2750
Wire Wire Line
	9300 2900 9200 2900
Text Label 9200 2750 2    50   ~ 0
IO21
Text Label 9200 2900 2    50   ~ 0
IO22
Wire Wire Line
	3950 1300 4250 1300
Wire Wire Line
	3950 1100 4250 1100
Wire Wire Line
	9000 1150 9300 1150
Wire Wire Line
	9000 1400 9300 1400
Wire Wire Line
	9100 3850 9300 3850
$Comp
L Device:R R?
U 1 1 5FB95364
P 8950 4950
AR Path="/5F89C30A/5FB95364" Ref="R?"  Part="1" 
AR Path="/5FB95364" Ref="R?"  Part="1" 
AR Path="/5FAEF03B/5FB95364" Ref="R?"  Part="1" 
F 0 "R?" V 8850 4900 50  0000 C CNN
F 1 "0R" V 8850 5050 50  0000 C CNN
F 2 "" V 8880 4950 50  0001 C CNN
F 3 "~" H 8950 4950 50  0001 C CNN
	1    8950 4950
	0    1    1    0   
$EndComp
Text Label 8700 4950 2    50   ~ 0
IO26
Wire Wire Line
	8700 4950 8800 4950
$Comp
L Device:R R?
U 1 1 5FB96239
P 8950 5200
AR Path="/5F89C30A/5FB96239" Ref="R?"  Part="1" 
AR Path="/5FB96239" Ref="R?"  Part="1" 
AR Path="/5FAEF03B/5FB96239" Ref="R?"  Part="1" 
F 0 "R?" V 8850 5150 50  0000 C CNN
F 1 "0R" V 8850 5300 50  0000 C CNN
F 2 "" V 8880 5200 50  0001 C CNN
F 3 "~" H 8950 5200 50  0001 C CNN
	1    8950 5200
	0    1    1    0   
$EndComp
Text Label 8700 5200 2    50   ~ 0
IO27
Wire Wire Line
	8700 5200 8800 5200
Wire Wire Line
	9100 4950 9300 4950
Wire Wire Line
	9300 5200 9100 5200
Text Notes 5100 2750 0    50   ~ 0
FIXME: All IO pins are provisional
$EndSCHEMATC
