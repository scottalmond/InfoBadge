EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3950 6000 0    50   ~ 0
battery\nbuzzer\nled\nePaper (1.8V?)\nFlash memory\ncapacitive touch\nPMIC/LDO\naccel\n(magn)\nusb\n(solar)\nreset button\npogo: SWD@1.8V [VDDIO, SWCLK, SWDIO, nRESET,GND]\nfiducials\nexternal crystal (precison boost?)
Text Notes 6800 6450 0    50   ~ 0
Markings:\nwiress/cross Wireless Incapable\nwrench/cross No user service parts inside
Text GLabel 8550 5550 0    50   Input ~ 0
SWDIO
Text GLabel 8550 5450 0    50   Input ~ 0
SWCLK
Text GLabel 7950 5750 0    50   Input ~ 0
~RESET
Text GLabel 9200 2300 0    50   Input ~ 0
VREF
$Comp
L Connector:TestPoint TP1
U 1 1 5E3F6BD0
P 10650 800
F 0 "TP1" V 10604 988 50  0000 L CNN
F 1 "VREF" V 10695 988 50  0000 L CNN
F 2 "" H 10850 800 50  0001 C CNN
F 3 "~" H 10850 800 50  0001 C CNN
	1    10650 800 
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5E3F7589
P 10650 1600
F 0 "TP5" V 10604 1788 50  0000 L CNN
F 1 "GND" V 10695 1788 50  0000 L CNN
F 2 "" H 10850 1600 50  0001 C CNN
F 3 "~" H 10850 1600 50  0001 C CNN
	1    10650 1600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5E3F7850
P 10650 1000
F 0 "TP2" V 10604 1188 50  0000 L CNN
F 1 "SWDIO" V 10695 1188 50  0000 L CNN
F 2 "" H 10850 1000 50  0001 C CNN
F 3 "~" H 10850 1000 50  0001 C CNN
	1    10650 1000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5E3F7A55
P 10650 1200
F 0 "TP3" V 10604 1388 50  0000 L CNN
F 1 "SWCLK" V 10695 1388 50  0000 L CNN
F 2 "" H 10850 1200 50  0001 C CNN
F 3 "~" H 10850 1200 50  0001 C CNN
	1    10650 1200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E3F7CC8
P 10650 1400
F 0 "TP4" V 10598 1588 50  0000 L CNN
F 1 "~RESET" V 10696 1588 50  0000 L CNN
F 2 "" H 10850 1400 50  0001 C CNN
F 3 "~" H 10850 1400 50  0001 C CNN
	1    10650 1400
	0    1    1    0   
$EndComp
Text GLabel 10650 800  0    50   Input ~ 0
VREF
Text GLabel 10650 1200 0    50   Input ~ 0
SWCLK
Text GLabel 10650 1400 0    50   Input ~ 0
~RESET
Text GLabel 10650 1000 0    50   Input ~ 0
SWDIO
$Comp
L power:GND #PWR0101
U 1 1 5E3F9E9A
P 10650 1600
F 0 "#PWR0101" H 10650 1350 50  0001 C CNN
F 1 "GND" H 10655 1427 50  0000 C CNN
F 2 "" H 10650 1600 50  0001 C CNN
F 3 "" H 10650 1600 50  0001 C CNN
	1    10650 1600
	1    0    0    -1  
$EndComp
Text Notes 10350 650  0    50   ~ 0
SWD
Wire Notes Line
	11150 1850 10300 1850
Wire Notes Line
	10300 1850 10300 550 
Wire Notes Line
	10300 550  11150 550 
Wire Notes Line
	11150 550  11150 1850
$Comp
L power:GND #PWR0102
U 1 1 5E403121
P 10100 6150
F 0 "#PWR0102" H 10100 5900 50  0001 C CNN
F 1 "GND" H 10105 5977 50  0000 C CNN
F 2 "" H 10100 6150 50  0001 C CNN
F 3 "" H 10100 6150 50  0001 C CNN
	1    10100 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5E404E44
P 9250 1900
F 0 "FB1" H 9350 1946 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 9350 1855 50  0000 L CNN
F 2 "" V 9180 1900 50  0001 C CNN
F 3 "~" H 9250 1900 50  0001 C CNN
	1    9250 1900
	1    0    0    -1  
$EndComp
Text Notes 7000 1150 0    50   ~ 0
A ferrite bead can be added between the main power supply (VDD)\nand VDDANA to prevent digital noise from entering the analog\npower domain. The bead should provide enough impedance\n(e.g. 50Ω at 20MHz and 220Ω at 100MHz) to separate the digital\nand analog power domains. Make sure to select a ferrite\nbead designed for filtering applications with a low DC resistance\nto avoid a large voltage drop across the ferrite bead.
Text Notes 600  650  0    50   ~ 0
ePaper Display
Text GLabel 5400 7000 1    50   Input ~ 0
D+
Text GLabel 5200 6900 1    50   Input ~ 0
D-
Wire Wire Line
	5000 7450 5000 7550
Wire Wire Line
	5000 7250 5200 7250
Wire Wire Line
	5000 7550 5200 7550
$Comp
L Device:C C1
U 1 1 5E3FFA49
P 5200 7400
F 0 "C1" H 5315 7446 50  0000 L CNN
F 1 "4.5nF" H 5315 7355 50  0000 L CNN
F 2 "" H 5238 7250 50  0001 C CNN
F 3 "~" H 5200 7400 50  0001 C CNN
	1    5200 7400
	1    0    0    -1  
$EndComp
Connection ~ 5200 7250
Connection ~ 5200 7550
Wire Wire Line
	5200 7550 5600 7550
$Comp
L Device:R R3
U 1 1 5E4003ED
P 5600 7400
F 0 "R3" H 5670 7446 50  0000 L CNN
F 1 "1M" H 5670 7355 50  0000 L CNN
F 2 "" V 5530 7400 50  0001 C CNN
F 3 "~" H 5600 7400 50  0001 C CNN
	1    5600 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E4014C9
P 6550 7250
F 0 "#PWR0106" H 6550 7000 50  0001 C CNN
F 1 "GND" H 6555 7077 50  0000 C CNN
F 2 "" H 6550 7250 50  0001 C CNN
F 3 "" H 6550 7250 50  0001 C CNN
	1    6550 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5E404AF2
P 6550 6600
F 0 "#PWR0109" H 6550 6450 50  0001 C CNN
F 1 "+5V" H 6565 6773 50  0000 C CNN
F 2 "" H 6550 6600 50  0001 C CNN
F 3 "" H 6550 6600 50  0001 C CNN
	1    6550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7250 5600 7250
$Comp
L TPD4S012DRYR:TPD4S012DRYR U2
U 1 1 5E4073ED
P 6050 6850
F 0 "U2" H 6050 7317 50  0000 C CNN
F 1 "TPD4S012DRYR" H 6050 7226 50  0000 C CNN
F 2 "TPD4S012DRYR:SON50P100X145X60-6N" H 6050 6850 50  0001 L BNN
F 3 "Texas Instruments" H 6050 6850 50  0001 L BNN
	1    6050 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7050 6550 7250
$Comp
L 10118194-0001LF:10118194-0001LF J2
U 1 1 5E4181B3
P 4500 7150
F 0 "J2" H 4393 7717 50  0000 C CNN
F 1 "10118194-0001LF" H 4393 7626 50  0000 C CNN
F 2 "10118194-0001LF:AMPHENOL_10118194-0001LF" H 4500 7150 50  0001 L BNN
F 3 "Unavailable" H 4500 7150 50  0001 L BNN
F 4 "None" H 4500 7150 50  0001 L BNN "Field4"
F 5 "10118194-0001LF" H 4500 7150 50  0001 L BNN "Field5"
F 6 "Micro Usb, 2.0 Type b, Rcpt, Smt" H 4500 7150 50  0001 L BNN "Field6"
F 7 "None" H 4500 7150 50  0001 L BNN "Field7"
F 8 "Amphenol ICC" H 4500 7150 50  0001 L BNN "Field8"
	1    4500 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 7150 5550 7050
Wire Wire Line
	5500 7050 5500 6850
Wire Wire Line
	5500 6850 5550 6850
Wire Wire Line
	5300 6950 5300 6650
Wire Wire Line
	5400 7050 5400 7000
Connection ~ 5400 7050
Wire Wire Line
	5400 7050 5500 7050
Wire Wire Line
	5200 6950 5200 6900
Connection ~ 5200 6950
Wire Wire Line
	5200 6950 5300 6950
Connection ~ 5600 7250
Wire Wire Line
	5600 7250 6550 7250
$Comp
L power:+5V #PWR0107
U 1 1 5E425225
P 5100 6850
F 0 "#PWR0107" H 5100 6700 50  0001 C CNN
F 1 "+5V" H 5115 7023 50  0000 C CNN
F 2 "" H 5100 6850 50  0001 C CNN
F 3 "" H 5100 6850 50  0001 C CNN
	1    5100 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6850 5100 6850
Wire Wire Line
	6550 6650 6550 6600
Wire Wire Line
	5300 6650 5550 6650
Wire Wire Line
	5000 6950 5200 6950
Connection ~ 6550 7250
Wire Wire Line
	5000 7050 5400 7050
Wire Wire Line
	5000 7150 5550 7150
Text Notes 4150 6400 0    50   ~ 0
USB Input
Wire Notes Line
	4100 6300 6700 6300
Wire Notes Line
	6700 7650 4100 7650
Text GLabel 8550 5250 0    50   Input ~ 0
D+
Text GLabel 8550 5150 0    50   Input ~ 0
D-
Wire Notes Line
	6700 7650 6700 6300
Wire Notes Line
	4100 7650 4100 6300
Text GLabel 4800 1450 0    50   Input ~ 0
SDA_1V8
Text GLabel 4800 1650 0    50   Input ~ 0
SCL_1V8
$Comp
L power:GND #PWR0108
U 1 1 5E437902
P 5700 2150
F 0 "#PWR0108" H 5700 1900 50  0001 C CNN
F 1 "GND" H 5705 1977 50  0000 C CNN
F 2 "" H 5700 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	1    0    0    -1  
$EndComp
$Comp
L custom:IIS2DLPC U3
U 1 1 5E43BD43
P 5200 1550
F 0 "U3" H 5250 2231 50  0000 C CNN
F 1 "IIS2DLPC" H 5250 2140 50  0000 C CNN
F 2 "Package_LGA:LGA-12_2x2mm_P0.5mm" H 5350 2100 50  0001 L CNN
F 3 "www.st.com/resource/en/datasheet/lis2hh12.pdf" H 4850 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:AT25SF081-SSHD-X U4
U 1 1 5E4432EB
P 2300 4550
F 0 "U4" H 2944 4596 50  0000 L CNN
F 1 "AT25SF641" H 2944 4505 50  0000 L CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 2300 3950 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 2300 4550 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
Text Notes 5100 6250 0    50   ~ 0
Tie circuit GND to shield or USB GND?
$Comp
L XZMDKCBDDG45S-9:XZMDKCBDDG45S-9 U5
U 1 1 5E44F3FF
P 4950 3100
F 0 "U5" H 4932 3517 50  0000 C CNN
F 1 "XZMDKCBDDG45S-9" H 4932 3426 50  0000 C CNN
F 2 "XZMDKCBDDG45S-9:PLCC-4" H 5050 3100 50  0001 C CNN
F 3 "" H 5050 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Text Notes 800  5450 0    50   ~ 0
PMIC/LDO
Text Notes 1800 4100 0    50   ~ 0
Memory
Text Notes 4450 800  0    50   ~ 0
Accelerometer
Text Notes 4550 2700 0    50   ~ 0
LED
$Comp
L custom:eInk_waveshare_1.54A U6
U 1 1 5E462A5E
P 2250 2000
F 0 "U6" V 900 1950 50  0000 L CNN
F 1 "eInk_waveshare_1.54A" H 1850 2000 50  0000 L CNN
F 2 "custom:eInk_waveshare_1.54A" H 2250 2000 50  0001 C CNN
F 3 "" H 2250 2000 50  0001 C CNN
	1    2250 2000
	0    1    1    0   
$EndComp
$Comp
L XF2M-2415-1A:XF2M-2415-1A J1
U 1 1 5E477E76
P 1900 2050
F 0 "J1" H 1793 683 50  0000 C CNN
F 1 "XF2M-2415-1A" H 1793 774 50  0000 C CNN
F 2 "XF2M-2415-1A:OMRON_XF2M-2415-1A" H 1900 2050 50  0001 L BNN
F 3 "TE Connectivity" H 1900 2050 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 1900 2050 50  0001 L BNN "Field4"
	1    1900 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5E49E427
P 9850 650
F 0 "FID1" H 9935 696 50  0000 L CNN
F 1 "Fiducial" H 9935 605 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 9850 650 50  0001 C CNN
F 3 "~" H 9850 650 50  0001 C CNN
	1    9850 650 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5E49F2F6
P 9850 900
F 0 "FID2" H 9935 946 50  0000 L CNN
F 1 "Fiducial" H 9935 855 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 9850 900 50  0001 C CNN
F 3 "~" H 9850 900 50  0001 C CNN
	1    9850 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5E49F92F
P 9850 1150
F 0 "FID3" H 9935 1196 50  0000 L CNN
F 1 "Fiducial" H 9935 1105 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 9850 1150 50  0001 C CNN
F 3 "~" H 9850 1150 50  0001 C CNN
	1    9850 1150
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_SAML:ATSAML21J18B-AUT U1
U 1 1 5E4A7A7D
P 9550 4250
F 0 "U1" H 9550 2261 50  0000 C CNN
F 1 "ATSAML21J18B-AUT" H 9550 2170 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 10750 6050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001477A.pdf" H 9550 4250 50  0001 C CNN
	1    9550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 6150 9650 6150
$Comp
L TL3315NF100Q:TL3315NF100Q S1
U 1 1 5E4BB22B
P 1050 7100
F 0 "S1" H 1050 7376 50  0000 C CNN
F 1 "TL3315NF100Q" H 1050 7100 50  0001 L BNN
F 2 "TL3315NF100Q:TL3315NF100Q" H 1050 7100 50  0001 L BNN
F 3 "EG4620CT-ND" H 1050 7100 50  0001 L BNN
	1    1050 7100
	0    1    1    0   
$EndComp
Text Notes 1150 7350 0    50   ~ 0
~MR~ RESET
$Comp
L Transistor_FET:ZXM61N03F Q1
U 1 1 5E47D615
P 3300 1350
F 0 "Q1" H 3504 1396 50  0000 L CNN
F 1 "SI1308EDL-T1-GE3" H 3504 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 3500 1275 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ZXM61N03F.pdf" H 3300 1350 50  0001 L CNN
	1    3300 1350
	1    0    0    1   
$EndComp
$Comp
L Device:L L1
U 1 1 5E4829F3
P 3150 1750
F 0 "L1" H 3203 1796 50  0000 L CNN
F 1 "68uH" H 3203 1705 50  0000 L CNN
F 2 "Inductor_SMD:L_1206_3216Metric" H 3150 1750 50  0001 C CNN
F 3 "~" H 3150 1750 50  0001 C CNN
	1    3150 1750
	0    1    1    0   
$EndComp
Text Notes 6700 3500 0    50   ~ 0
Audio
$Comp
L Device:D D2
U 1 1 5E499567
P 3400 2600
F 0 "D2" V 3354 2679 50  0000 L CNN
F 1 "MBR0530" V 3445 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3400 2600 50  0001 C CNN
F 3 "~" H 3400 2600 50  0001 C CNN
	1    3400 2600
	0    1    -1   0   
$EndComp
$Comp
L Device:D D3
U 1 1 5E499BDD
P 2900 2600
F 0 "D3" V 2854 2679 50  0000 L CNN
F 1 "MBR0530" V 2945 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2900 2600 50  0001 C CNN
F 3 "~" H 2900 2600 50  0001 C CNN
	1    2900 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5E4AF1A3
P 1000 3150
F 0 "C14" V 950 3250 50  0000 C CNN
F 1 "1uF" V 950 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 3150 50  0001 C CNN
F 3 "~" H 1000 3150 50  0001 C CNN
	1    1000 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5E4B049C
P 1000 3050
F 0 "C13" V 950 3150 50  0000 C CNN
F 1 "1uF" V 950 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 3050 50  0001 C CNN
F 3 "~" H 1000 3050 50  0001 C CNN
	1    1000 3050
	0    1    1    0   
$EndComp
Text GLabel 1350 3250 3    50   Input ~ 0
ePREVGL
Text GLabel 1250 3250 3    50   Input ~ 0
ePREVGH
Wire Wire Line
	1100 3150 1500 3150
Wire Wire Line
	1100 3050 1350 3050
$Comp
L Device:C_Small C12
U 1 1 5E4B45B2
P 1000 2950
F 0 "C12" V 950 3050 50  0000 C CNN
F 1 "1uF" V 950 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2950 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5E4B48F7
P 1000 2850
F 0 "C11" V 950 2950 50  0000 C CNN
F 1 "1uF" V 950 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2850 50  0001 C CNN
F 3 "~" H 1000 2850 50  0001 C CNN
	1    1000 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5E4B4BA8
P 1000 2750
F 0 "C10" V 950 2850 50  0000 C CNN
F 1 "1uF" V 950 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2750 50  0001 C CNN
F 3 "~" H 1000 2750 50  0001 C CNN
	1    1000 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5E4B4E0F
P 1000 2650
F 0 "C9" V 950 2750 50  0000 C CNN
F 1 "1uF" V 950 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2650 50  0001 C CNN
F 3 "~" H 1000 2650 50  0001 C CNN
	1    1000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2950 1500 2950
Wire Wire Line
	1500 2850 1250 2850
Wire Wire Line
	1100 2750 1500 2750
Wire Wire Line
	1500 2650 1100 2650
Wire Wire Line
	1350 3250 1350 3050
Connection ~ 1350 3050
Wire Wire Line
	1350 3050 1500 3050
Wire Wire Line
	1250 3250 1250 2850
Connection ~ 1250 2850
Wire Wire Line
	1250 2850 1100 2850
$Comp
L Device:C_Small C8
U 1 1 5E4BAEE3
P 1000 2550
F 0 "C8" V 950 2650 50  0000 C CNN
F 1 "1uF" V 950 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2550 50  0001 C CNN
F 3 "~" H 1000 2550 50  0001 C CNN
	1    1000 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2550 1500 2550
$Comp
L power:+3V3 #PWR03
U 1 1 5E4BC66C
P 1500 2350
F 0 "#PWR03" H 1500 2200 50  0001 C CNN
F 1 "+3V3" V 1515 2478 50  0000 L CNN
F 2 "" H 1500 2350 50  0001 C CNN
F 3 "" H 1500 2350 50  0001 C CNN
	1    1500 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2250 1500 2350
Text GLabel 1500 2150 0    50   Input ~ 0
eDIN
Text GLabel 1500 2050 0    50   Input ~ 0
eCLK
Text GLabel 1500 1950 0    50   Input ~ 0
eCS
Text GLabel 1500 1850 0    50   Input ~ 0
eDC
Text GLabel 1500 1750 0    50   Input ~ 0
eRST
Text GLabel 1500 1650 0    50   Input ~ 0
eBUSY
Text GLabel 1500 1550 0    50   Input ~ 0
eBS
NoConn ~ 1500 1450
NoConn ~ 1500 1350
$Comp
L Device:C_Small C6
U 1 1 5E4C2717
P 1000 1250
F 0 "C6" V 950 1350 50  0000 C CNN
F 1 "1uF" V 950 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 1250 50  0001 C CNN
F 3 "~" H 1000 1250 50  0001 C CNN
	1    1000 1250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E4C3E87
P 1000 1150
F 0 "C5" V 950 1250 50  0000 C CNN
F 1 "1uF" V 950 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 1150 50  0001 C CNN
F 3 "~" H 1000 1150 50  0001 C CNN
	1    1000 1150
	0    1    1    0   
$EndComp
Text GLabel 1500 1050 0    50   Input ~ 0
eRESE
Text GLabel 1500 950  0    50   Input ~ 0
eGDR
NoConn ~ 1500 850 
Connection ~ 1500 2350
Wire Wire Line
	1100 1150 1500 1150
Wire Wire Line
	1500 1250 1100 1250
$Comp
L power:GND #PWR01
U 1 1 5E4CAAC0
P 650 1300
F 0 "#PWR01" H 650 1050 50  0001 C CNN
F 1 "GND" H 655 1127 50  0000 C CNN
F 2 "" H 650 1300 50  0001 C CNN
F 3 "" H 650 1300 50  0001 C CNN
	1    650  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1150 650  1250
Wire Wire Line
	650  3050 650  3150
Wire Wire Line
	650  2950 650  3050
Connection ~ 650  3050
Wire Wire Line
	650  2550 650  2650
Connection ~ 650  2950
Connection ~ 650  2850
Wire Wire Line
	650  2850 650  2950
Connection ~ 650  2750
Wire Wire Line
	650  2750 650  2850
Connection ~ 650  2650
Wire Wire Line
	650  2650 650  2750
$Comp
L power:GND #PWR02
U 1 1 5E4D910E
P 650 3200
F 0 "#PWR02" H 650 2950 50  0001 C CNN
F 1 "GND" H 655 3027 50  0000 C CNN
F 2 "" H 650 3200 50  0001 C CNN
F 3 "" H 650 3200 50  0001 C CNN
	1    650  3200
	1    0    0    -1  
$EndComp
Connection ~ 650  3150
$Comp
L Device:R R2
U 1 1 5E4E40B1
P 3050 1000
F 0 "R2" V 2843 1000 50  0000 C CNN
F 1 "3R0" V 2934 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2980 1000 50  0001 C CNN
F 3 "~" H 3050 1000 50  0001 C CNN
	1    3050 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E4E948A
P 2800 1350
F 0 "R1" V 2593 1350 50  0000 C CNN
F 1 "10k" V 2684 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 1350 50  0001 C CNN
F 3 "~" H 2800 1350 50  0001 C CNN
	1    2800 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1000 3400 1150
Wire Wire Line
	650  3200 650  3150
Wire Wire Line
	650  1300 650  1250
Connection ~ 650  1250
$Comp
L power:GND #PWR05
U 1 1 5E4EC581
P 2500 2450
F 0 "#PWR05" H 2500 2200 50  0001 C CNN
F 1 "GND" H 2505 2277 50  0000 C CNN
F 2 "" H 2500 2450 50  0001 C CNN
F 3 "" H 2500 2450 50  0001 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1000 3400 1000
$Comp
L power:+3V3 #PWR06
U 1 1 5E50441A
P 2900 1700
F 0 "#PWR06" H 2900 1550 50  0001 C CNN
F 1 "+3V3" H 2915 1873 50  0000 C CNN
F 2 "" H 2900 1700 50  0001 C CNN
F 3 "" H 2900 1700 50  0001 C CNN
	1    2900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1750 2900 1700
$Comp
L Device:C C15
U 1 1 5E50A40F
P 2700 1750
F 0 "C15" V 2448 1750 50  0000 C CNN
F 1 "4.7uF" V 2539 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2738 1600 50  0001 C CNN
F 3 "~" H 2700 1750 50  0001 C CNN
	1    2700 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1750 2500 1750
Connection ~ 2500 1750
Wire Wire Line
	2850 1750 2900 1750
Connection ~ 2900 1750
$Comp
L Device:C_Small C7
U 1 1 5E5147A6
P 1000 2250
F 0 "C7" V 950 2350 50  0000 C CNN
F 1 "100nF" V 950 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2250 50  0001 C CNN
F 3 "~" H 1000 2250 50  0001 C CNN
	1    1000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	650  1150 900  1150
Wire Wire Line
	900  2250 650  2250
Connection ~ 650  2550
Wire Wire Line
	1100 2250 1500 2250
Connection ~ 1500 2250
Wire Wire Line
	650  2550 900  2550
Wire Wire Line
	650  2650 900  2650
Wire Wire Line
	650  2750 900  2750
Wire Wire Line
	650  2850 900  2850
Wire Wire Line
	650  2950 900  2950
Wire Wire Line
	650  3050 900  3050
Wire Wire Line
	650  3150 900  3150
Text Notes 3200 900  0    50   ~ 0
1.54"\nModel A
Text GLabel 3500 1000 2    50   Input ~ 0
eRESE
Wire Wire Line
	3500 1000 3400 1000
Connection ~ 3400 1000
Text GLabel 3100 1450 3    50   Input ~ 0
eGDR
Wire Wire Line
	2500 1000 2900 1000
Wire Wire Line
	2500 1000 2500 1350
Wire Wire Line
	2950 1350 3100 1350
Wire Wire Line
	3100 1450 3100 1350
Connection ~ 3100 1350
Wire Wire Line
	2650 1350 2500 1350
Connection ~ 2500 1350
Wire Wire Line
	2500 1350 2500 1750
Wire Wire Line
	650  1250 900  1250
$Comp
L Device:C C16
U 1 1 5E5581D0
P 3100 2400
F 0 "C16" V 2848 2400 50  0000 C CNN
F 1 "4.7uF" V 2939 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 2250 50  0001 C CNN
F 3 "~" H 3100 2400 50  0001 C CNN
	1    3100 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2450 3400 2400
Connection ~ 3400 2400
Text GLabel 2900 2750 3    50   Input ~ 0
ePREVGL
Text GLabel 3400 2750 3    50   Input ~ 0
ePREVGH
$Comp
L Device:D D4
U 1 1 5E49A26C
P 2700 2400
F 0 "D4" V 2654 2479 50  0000 L CNN
F 1 "MBR0530" V 2745 2479 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2700 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2400 2900 2400
Wire Wire Line
	2900 2450 2900 2400
Wire Wire Line
	3250 2400 3400 2400
Wire Wire Line
	3400 1550 3400 1750
Wire Wire Line
	3300 1750 3400 1750
Connection ~ 3400 1750
Wire Wire Line
	3400 1750 3400 2400
Wire Wire Line
	2900 1750 3000 1750
Wire Wire Line
	2500 1750 2500 2400
Wire Wire Line
	2950 2400 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	2550 2400 2500 2400
Connection ~ 2500 2400
Wire Wire Line
	2500 2400 2500 2450
Text GLabel 3750 2050 1    50   Input ~ 0
eBS
$Comp
L power:GND #PWR07
U 1 1 5E59F824
P 3750 2050
F 0 "#PWR07" H 3750 1800 50  0001 C CNN
F 1 "GND" H 3755 1877 50  0000 C CNN
F 2 "" H 3750 2050 50  0001 C CNN
F 3 "" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
Text Notes 3700 1800 0    50   ~ 0
4-wire\n8-bit SPI
Wire Notes Line
	550  550  4300 550 
Wire Notes Line
	550  550  550  3700
Wire Notes Line
	4300 550  4300 3700
Wire Notes Line
	4300 3700 550  3700
Wire Wire Line
	650  2250 650  2550
$Comp
L power:GND #PWR04
U 1 1 5E4BA739
P 1500 2450
F 0 "#PWR04" H 1500 2200 50  0001 C CNN
F 1 "GND" V 1505 2322 50  0000 R CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2450
	0    1    1    0   
$EndComp
$Comp
L TL3315NF100Q:TL3315NF100Q S2
U 1 1 5E5FA603
P 5200 5100
F 0 "S2" H 5200 5376 50  0000 C CNN
F 1 "TL3315NF100Q" H 5200 5100 50  0001 L BNN
F 2 "TL3315NF100Q:TL3315NF100Q" H 5200 5100 50  0001 L BNN
F 3 "EG4620CT-ND" H 5200 5100 50  0001 L BNN
	1    5200 5100
	1    0    0    -1  
$EndComp
Text Notes 5400 4950 0    50   ~ 0
uP RESET
Text Notes 6550 1550 0    50   ~ 0
Magnetometer
$Comp
L power:+3V3 #PWR0110
U 1 1 5E49E156
P 2300 4050
F 0 "#PWR0110" H 2300 3900 50  0001 C CNN
F 1 "+3V3" H 2315 4223 50  0000 C CNN
F 2 "" H 2300 4050 50  0001 C CNN
F 3 "" H 2300 4050 50  0001 C CNN
	1    2300 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E49EA2C
P 2300 5050
F 0 "#PWR0111" H 2300 4800 50  0001 C CNN
F 1 "GND" H 2305 4877 50  0000 C CNN
F 2 "" H 2300 5050 50  0001 C CNN
F 3 "" H 2300 5050 50  0001 C CNN
	1    2300 5050
	1    0    0    -1  
$EndComp
Text GLabel 1700 4550 0    50   Input ~ 0
fCS
Text GLabel 3000 4350 2    50   Input ~ 0
fSDO
Text GLabel 3000 4250 2    50   Input ~ 0
eDIN
Wire Wire Line
	2900 4350 2950 4350
Wire Wire Line
	2950 4350 2950 4250
Wire Wire Line
	2950 4250 3000 4250
Connection ~ 2950 4350
Wire Wire Line
	2950 4350 3000 4350
Text GLabel 1700 4350 0    50   Input ~ 0
fSDI
Text Notes 1050 4450 0    50   ~ 0
try daisy-chain SPI in HW
$Comp
L power:+3V3 #PWR0112
U 1 1 5E4B2FF9
P 5150 3350
F 0 "#PWR0112" H 5150 3200 50  0001 C CNN
F 1 "+3V3" H 5165 3523 50  0000 C CNN
F 2 "" H 5150 3350 50  0001 C CNN
F 3 "" H 5150 3350 50  0001 C CNN
	1    5150 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E4B3E49
P 5450 2950
F 0 "R4" V 5243 2950 50  0000 C CNN
F 1 "68R0" V 5334 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5380 2950 50  0001 C CNN
F 3 "~" H 5450 2950 50  0001 C CNN
	1    5450 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2950 5300 2950
Text GLabel 5600 2950 2    50   Input ~ 0
RED
Text GLabel 5150 3050 2    50   Input ~ 0
GREEN
Text GLabel 5150 3150 2    50   Input ~ 0
BLUE
Wire Wire Line
	9650 6150 10100 6150
Connection ~ 9650 6150
$Comp
L power:GND #PWR0113
U 1 1 5E4CDA15
P 3700 7450
F 0 "#PWR0113" H 3700 7200 50  0001 C CNN
F 1 "GND" H 3705 7277 50  0000 C CNN
F 2 "" H 3700 7450 50  0001 C CNN
F 3 "" H 3700 7450 50  0001 C CNN
	1    3700 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0114
U 1 1 5E4CEA62
P 2750 6300
F 0 "#PWR0114" H 2750 6150 50  0001 C CNN
F 1 "+1V8" H 2765 6473 50  0000 C CNN
F 2 "" H 2750 6300 50  0001 C CNN
F 3 "" H 2750 6300 50  0001 C CNN
	1    2750 6300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5E4DE3A1
P 2950 6250
F 0 "TP10" H 3008 6368 50  0000 L CNN
F 1 "1V8" H 3008 6277 50  0000 L CNN
F 2 "" H 3150 6250 50  0001 C CNN
F 3 "~" H 3150 6250 50  0001 C CNN
	1    2950 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5E49276A
P 3150 6800
F 0 "BT1" H 3258 6846 50  0000 L CNN
F 1 "45mAh" H 3258 6755 50  0000 L CNN
F 2 "lir2032:LIR2032" V 3150 6860 50  0001 C CNN
F 3 "~" V 3150 6860 50  0001 C CNN
	1    3150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6500 2550 6500
Wire Wire Line
	2550 6500 2550 6600
Wire Wire Line
	2550 6600 2500 6600
Wire Wire Line
	2700 7000 2900 7000
$Comp
L Device:Thermistor TH1
U 1 1 5E53AC91
P 2900 7200
F 0 "TH1" H 3005 7246 50  0000 L CNN
F 1 "10k" H 3005 7155 50  0000 L CNN
F 2 "" H 2900 7200 50  0001 C CNN
F 3 "~" H 2900 7200 50  0001 C CNN
	1    2900 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E53BBF0
P 2550 7200
F 0 "R6" H 2620 7246 50  0000 L CNN
F 1 "10k" H 2620 7155 50  0000 L CNN
F 2 "" V 2480 7200 50  0001 C CNN
F 3 "~" H 2550 7200 50  0001 C CNN
	1    2550 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7050 2550 7000
Wire Wire Line
	2550 7000 2700 7000
Wire Wire Line
	2550 6700 2500 6700
Wire Wire Line
	2550 7350 2550 7400
Wire Wire Line
	2550 7400 2900 7400
Connection ~ 3150 7000
Wire Wire Line
	2500 6400 2550 6400
Wire Wire Line
	2550 6400 2550 6300
Wire Wire Line
	2550 6300 2500 6300
Wire Wire Line
	2500 6100 2550 6100
Wire Wire Line
	2550 6100 2550 6000
Wire Wire Line
	2550 5900 2500 5900
Wire Wire Line
	2500 6000 2550 6000
Connection ~ 2550 6000
Wire Wire Line
	2550 6000 2550 5900
$Comp
L Device:C_Small C19
U 1 1 5E56C1D6
P 3450 6300
F 0 "C19" V 3400 6400 50  0000 C CNN
F 1 "10uF" V 3400 6150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 6300 50  0001 C CNN
F 3 "~" H 3450 6300 50  0001 C CNN
	1    3450 6300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5E5784F4
P 2950 5950
F 0 "TP9" H 3008 6068 50  0000 L CNN
F 1 "3V3" H 3008 5977 50  0000 L CNN
F 2 "" H 3150 5950 50  0001 C CNN
F 3 "~" H 3150 5950 50  0001 C CNN
	1    2950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5E57891A
P 3450 6000
F 0 "C18" V 3400 6100 50  0000 C CNN
F 1 "10uF" V 3400 5850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 6000 50  0001 C CNN
F 3 "~" H 3450 6000 50  0001 C CNN
	1    3450 6000
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 5E5793BE
P 2750 6000
F 0 "#PWR0115" H 2750 5850 50  0001 C CNN
F 1 "+3V3" H 2765 6173 50  0000 C CNN
F 2 "" H 2750 6000 50  0001 C CNN
F 3 "" H 2750 6000 50  0001 C CNN
	1    2750 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5E579A26
P 2950 5650
F 0 "TP8" H 3008 5768 50  0000 L CNN
F 1 "PMID" H 3008 5677 50  0000 L CNN
F 2 "" H 3150 5650 50  0001 C CNN
F 3 "~" H 3150 5650 50  0001 C CNN
	1    2950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5E579DDF
P 3450 5700
F 0 "C17" V 3400 5800 50  0000 C CNN
F 1 "22uF" V 3400 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 5700 50  0001 C CNN
F 3 "~" H 3450 5700 50  0001 C CNN
	1    3450 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5900 2550 5700
Wire Wire Line
	2550 5700 2950 5700
Connection ~ 2550 5900
Connection ~ 2950 5700
Wire Wire Line
	2950 5700 3350 5700
Wire Wire Line
	2950 5650 2950 5700
Wire Wire Line
	2550 6300 2750 6300
Connection ~ 2550 6300
Connection ~ 2750 6300
Wire Wire Line
	2750 6300 2950 6300
Wire Wire Line
	2950 6250 2950 6300
Connection ~ 2950 6300
Wire Wire Line
	2950 6300 3350 6300
Wire Wire Line
	2500 6200 2650 6200
Wire Wire Line
	2650 6200 2650 6000
Wire Wire Line
	2650 6000 2750 6000
Connection ~ 2750 6000
Wire Wire Line
	2750 6000 2950 6000
Wire Wire Line
	2950 5950 2950 6000
Connection ~ 2950 6000
Wire Wire Line
	2950 6000 3350 6000
Wire Wire Line
	2900 7400 3700 7400
Connection ~ 2900 7400
Wire Wire Line
	3550 5700 3700 5700
Wire Wire Line
	3700 5700 3700 6000
Wire Wire Line
	3150 7000 3700 7000
Connection ~ 3700 7000
Wire Wire Line
	3700 7000 3700 7400
Wire Wire Line
	3550 6300 3700 6300
Wire Wire Line
	3550 6000 3700 6000
Connection ~ 3700 6000
Wire Wire Line
	3700 6000 3700 6300
Wire Wire Line
	2550 7000 2550 6700
Connection ~ 2550 7000
$Comp
L power:+5V #PWR0116
U 1 1 5E5CF205
P 1250 5900
F 0 "#PWR0116" H 1250 5750 50  0001 C CNN
F 1 "+5V" H 1265 6073 50  0000 C CNN
F 2 "" H 1250 5900 50  0001 C CNN
F 3 "" H 1250 5900 50  0001 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5E5CFA14
P 1450 5850
F 0 "TP7" H 1508 5968 50  0000 L CNN
F 1 "5V0" H 1508 5877 50  0000 L CNN
F 2 "" H 1650 5850 50  0001 C CNN
F 3 "~" H 1650 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5900 1450 5900
Wire Wire Line
	1450 5850 1450 5900
Connection ~ 1450 5900
Wire Wire Line
	1450 5900 1700 5900
Text GLabel 1700 6000 0    50   Input ~ 0
SDA_1V8
Text GLabel 1700 6100 0    50   Input ~ 0
SCL_1V8
NoConn ~ 1700 6200
NoConn ~ 1700 6300
$Comp
L Device:C_Small C2
U 1 1 5E5F3672
P 2700 6700
F 0 "C2" H 2792 6746 50  0000 L CNN
F 1 "2.2uF" H 2792 6655 50  0000 L CNN
F 2 "" H 2700 6700 50  0001 C CNN
F 3 "~" H 2700 6700 50  0001 C CNN
	1    2700 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0117
U 1 1 5E601616
P 850 6450
F 0 "#PWR0117" H 850 6300 50  0001 C CNN
F 1 "+1V8" H 865 6623 50  0000 C CNN
F 2 "" H 850 6450 50  0001 C CNN
F 3 "" H 850 6450 50  0001 C CNN
	1    850  6450
	1    0    0    -1  
$EndComp
Text GLabel 1550 6400 0    50   Input ~ 0
INT_PG
Wire Wire Line
	1550 6400 1600 6400
$Comp
L Device:R R5
U 1 1 5E609C5F
P 1050 6500
F 0 "R5" V 843 6500 50  0000 C CNN
F 1 "10k" V 934 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 980 6500 50  0001 C CNN
F 3 "~" H 1050 6500 50  0001 C CNN
	1    1050 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	850  6450 850  6500
Wire Wire Line
	850  6500 900  6500
Wire Wire Line
	1200 6500 1600 6500
$Comp
L power:+1V8 #PWR0118
U 1 1 5E619BB7
P 5550 1000
F 0 "#PWR0118" H 5550 850 50  0001 C CNN
F 1 "+1V8" H 5565 1173 50  0000 C CNN
F 2 "" H 5550 1000 50  0001 C CNN
F 3 "" H 5550 1000 50  0001 C CNN
	1    5550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1000 5550 1050
Wire Wire Line
	5550 1050 5300 1050
Connection ~ 5300 1050
Wire Wire Line
	5300 1050 5200 1050
Wire Wire Line
	1600 6400 1600 6500
Connection ~ 1600 6500
NoConn ~ 1700 6400
Wire Wire Line
	1600 6500 1700 6500
$Comp
L power:GND #PWR0119
U 1 1 5E65774C
P 1700 6600
F 0 "#PWR0119" H 1700 6350 50  0001 C CNN
F 1 "GND" H 1705 6427 50  0000 C CNN
F 2 "" H 1700 6600 50  0001 C CNN
F 3 "" H 1700 6600 50  0001 C CNN
	1    1700 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E6580CC
P 1700 6800
F 0 "#PWR0120" H 1700 6550 50  0001 C CNN
F 1 "GND" H 1705 6627 50  0000 C CNN
F 2 "" H 1700 6800 50  0001 C CNN
F 3 "" H 1700 6800 50  0001 C CNN
	1    1700 6800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5E658390
P 1350 6750
F 0 "TP6" H 1408 6868 50  0000 L CNN
F 1 "~MR" H 1408 6777 50  0000 L CNN
F 2 "" H 1550 6750 50  0001 C CNN
F 3 "~" H 1550 6750 50  0001 C CNN
	1    1350 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 6750 1350 6700
Wire Wire Line
	1350 6700 1700 6700
$Comp
L Connector:TestPoint TP11
U 1 1 5E66941A
P 2950 6550
F 0 "TP11" H 3008 6668 50  0000 L CNN
F 1 "BAT" H 3008 6577 50  0000 L CNN
F 2 "" H 3150 6550 50  0001 C CNN
F 3 "~" H 3150 6550 50  0001 C CNN
	1    2950 6550
	1    0    0    -1  
$EndComp
Connection ~ 2950 6600
Wire Wire Line
	2950 6600 3150 6600
Connection ~ 2550 6600
Connection ~ 2700 7000
Connection ~ 2900 7000
Wire Wire Line
	2900 7000 3150 7000
Wire Wire Line
	2550 6600 2700 6600
Connection ~ 2700 6600
Wire Wire Line
	2700 6600 2950 6600
Wire Wire Line
	2500 6800 2700 6800
Connection ~ 2700 6800
Wire Wire Line
	2700 6800 2700 7000
Wire Wire Line
	2950 6550 2950 6600
Wire Wire Line
	3700 6300 3700 7000
Connection ~ 3700 6300
Wire Wire Line
	3700 7400 3700 7450
Connection ~ 3700 7400
$Comp
L power:GND #PWR0121
U 1 1 5E6A5138
P 1050 7400
F 0 "#PWR0121" H 1050 7150 50  0001 C CNN
F 1 "GND" H 1055 7227 50  0000 C CNN
F 2 "" H 1050 7400 50  0001 C CNN
F 3 "" H 1050 7400 50  0001 C CNN
	1    1050 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6800 1050 6700
Wire Wire Line
	1050 6700 1350 6700
Connection ~ 1350 6700
Text Notes 2100 3650 0    50   ~ 0
Ref Wavshare 1.54" ePaper Schematic, Oct 2018\nRef John Loefler Hackaday Project eInk Adapter 164772
Text Notes 7900 4250 0    50   ~ 0
9-17 (?) pins for capacitive touch
$Comp
L BQ25155:BQ25155 U7
U 1 1 5E70B355
P 2100 6350
F 0 "U7" H 2100 7065 50  0000 C CNN
F 1 "BQ25155" H 2100 6974 50  0000 C CNN
F 2 "BQ21061YFPR:BGA20C40P4X5_162X202X50" H 2100 6300 50  0001 C CNN
F 3 "" H 2100 6300 50  0001 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
$Comp
L CMT-8503-90-SMT-TR:CMT-8503-90-SMT-TR LS1
U 1 1 5E71D223
P 6500 3750
F 0 "LS1" H 6679 3796 50  0000 L CNN
F 1 "CMT-8503-90-SMT-TR" H 6679 3705 50  0000 L CNN
F 2 "CMT-8503-90-SMT-TR:XDCR_CMT-8503-90-SMT-TR" H 6500 3750 50  0001 L BNN
F 3 "CUI Inc." H 6500 3750 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 6500 3750 50  0001 L BNN "Field4"
F 5 "3.00mm" H 6500 3750 50  0001 L BNN "Field5"
F 6 "1.0" H 6500 3750 50  0001 L BNN "Field6"
	1    6500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E72703C
P 6250 3750
F 0 "D1" V 6204 3829 50  0000 L CNN
F 1 "MBR0530" V 6295 3829 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 6250 3750 50  0001 C CNN
F 3 "~" H 6250 3750 50  0001 C CNN
	1    6250 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	6250 3600 6250 3550
Wire Wire Line
	6250 3550 6500 3550
Wire Wire Line
	6250 3900 6250 3950
Wire Wire Line
	6250 3950 6500 3950
$Comp
L power:+3V3 #PWR0103
U 1 1 5E741D0E
P 6500 3550
F 0 "#PWR0103" H 6500 3400 50  0001 C CNN
F 1 "+3V3" H 6515 3723 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Connection ~ 6500 3550
$Comp
L Transistor_FET:ZXM61N03F Q2
U 1 1 5E750579
P 6600 4150
F 0 "Q2" H 6804 4196 50  0000 L CNN
F 1 "SI1308EDL-T1-GE3" H 6804 4105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 6800 4075 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ZXM61N03F.pdf" H 6600 4150 50  0001 L CNN
	1    6600 4150
	-1   0    0    -1  
$EndComp
Connection ~ 6500 3950
$Comp
L power:GND #PWR0104
U 1 1 5E770029
P 6500 4350
F 0 "#PWR0104" H 6500 4100 50  0001 C CNN
F 1 "GND" H 6505 4177 50  0000 C CNN
F 2 "" H 6500 4350 50  0001 C CNN
F 3 "" H 6500 4350 50  0001 C CNN
	1    6500 4350
	1    0    0    -1  
$EndComp
Text GLabel 6800 4150 2    50   Input ~ 0
AUDIO
Text Notes 1650 7100 0    50   ~ 0
Alternate: BQ21061\nRemoves ADC
$Comp
L Device:C C20
U 1 1 5E786023
P 5800 1050
F 0 "C20" V 5548 1050 50  0000 C CNN
F 1 "100nF" V 5639 1050 50  0000 C CNN
F 2 "" H 5838 900 50  0001 C CNN
F 3 "~" H 5800 1050 50  0001 C CNN
	1    5800 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5E786BD8
P 6000 1100
F 0 "#PWR0122" H 6000 850 50  0001 C CNN
F 1 "GND" H 6005 927 50  0000 C CNN
F 2 "" H 6000 1100 50  0001 C CNN
F 3 "" H 6000 1100 50  0001 C CNN
	1    6000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1100 6000 1050
Wire Wire Line
	6000 1050 5950 1050
Wire Wire Line
	5650 1050 5550 1050
Connection ~ 5550 1050
Text GLabel 10700 5750 3    50   Input ~ 0
SDA_1V8
Text GLabel 10600 5750 3    50   Input ~ 0
SCL_1V8
$Comp
L Device:R R8
U 1 1 5E799970
P 10850 5700
F 0 "R8" V 10643 5700 50  0000 C CNN
F 1 "10k" V 10734 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10780 5700 50  0001 C CNN
F 3 "~" H 10850 5700 50  0001 C CNN
	1    10850 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E799EF2
P 10850 5400
F 0 "R7" V 10643 5400 50  0000 C CNN
F 1 "10k" V 10734 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10780 5400 50  0001 C CNN
F 3 "~" H 10850 5400 50  0001 C CNN
	1    10850 5400
	0    1    1    0   
$EndComp
$Comp
L power:+1V8 #PWR0123
U 1 1 5E7BE658
P 11050 5350
F 0 "#PWR0123" H 11050 5200 50  0001 C CNN
F 1 "+1V8" H 11065 5523 50  0000 C CNN
F 2 "" H 11050 5350 50  0001 C CNN
F 3 "" H 11050 5350 50  0001 C CNN
	1    11050 5350
	1    0    0    -1  
$EndComp
NoConn ~ 4800 1350
NoConn ~ 4800 1550
Text GLabel 5700 1450 2    50   Input ~ 0
INT_ACC_1
Text GLabel 5700 1550 2    50   Input ~ 0
INT_ACC_2
Wire Wire Line
	5700 1850 5700 2100
Wire Wire Line
	5700 2100 5300 2100
Wire Wire Line
	5100 2100 5100 2050
Connection ~ 5700 2100
Wire Wire Line
	5700 2100 5700 2150
Wire Wire Line
	5200 2050 5200 2100
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5100 2100
Wire Wire Line
	5300 2050 5300 2100
Connection ~ 5300 2100
Wire Wire Line
	5300 2100 5200 2100
Text Notes 10450 6450 0    50   ~ 0
SERCOM5 I2C VIN\nPAD[0] SDA PB30\nPAD[1] SCL PB31
Wire Wire Line
	10550 5250 10600 5250
Wire Wire Line
	10600 5250 10600 5700
Wire Wire Line
	10550 5150 10700 5150
Wire Wire Line
	10700 5150 10700 5400
Wire Wire Line
	11050 5400 11050 5350
Wire Wire Line
	11050 5700 11050 5400
Connection ~ 11050 5400
Wire Wire Line
	10600 5750 10600 5700
Connection ~ 10600 5700
Connection ~ 10700 5400
Wire Wire Line
	10700 5700 10600 5700
Wire Wire Line
	10700 5400 10700 5750
Wire Wire Line
	11000 5400 11050 5400
Wire Wire Line
	11000 5700 11050 5700
Text Notes 6750 4300 0    50   ~ 0
1V8 or 3V3
$Comp
L Device:C C?
U 1 1 5E936869
P 8350 5900
F 0 "C?" H 8465 5946 50  0000 L CNN
F 1 "100nF" H 8465 5855 50  0000 L CNN
F 2 "" H 8388 5750 50  0001 C CNN
F 3 "~" H 8350 5900 50  0001 C CNN
	1    8350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E937211
P 8350 6050
F 0 "#PWR?" H 8350 5800 50  0001 C CNN
F 1 "GND" H 8355 5877 50  0000 C CNN
F 2 "" H 8350 6050 50  0001 C CNN
F 3 "" H 8350 6050 50  0001 C CNN
	1    8350 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E94127E
P 8100 5750
F 0 "R?" V 7893 5750 50  0000 C CNN
F 1 "R" V 7984 5750 50  0000 C CNN
F 2 "" V 8030 5750 50  0001 C CNN
F 3 "~" H 8100 5750 50  0001 C CNN
	1    8100 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5750 8350 5750
Connection ~ 8350 5750
Wire Wire Line
	8350 5750 8550 5750
Text Notes 7850 5650 0    50   ~ 0
>330 ohms
$EndSCHEMATC
