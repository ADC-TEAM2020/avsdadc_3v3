# SAR Analog-To-Digital Converter
This repository will maintain simulation files and other relevant files of the SAR ADC block worked on in the VSD Summer Online Internship 2020

*Note: Circuit requires further optimization to improve performance. Design yet to be modified.*

Table of contents
=================
<!--ts-->
  
   * [A Glance at the ADC IP](#a-glance-at-the-adc-ip)
   * [Block Diagram of the SAR ADC IP](#block-diagram-of-the-sar-adc-ip)
   * [About Ngspice](#about-ngspice)
   * [Running the Simulation](#running-the-simulation)
   * [Pre-Layout Simulation](#pre-layout-simulation)
   * [Issues | Improvements | Future Work](#issues--improvements--future-work)
   * [Acknowledgments](#acknowledgments)
   * [Contact Information](#contact-information)
<!--te-->

## A Glance at the ADC IP

The  Design Specifications of the ADC IP can be found [here](/Documentation/Specifications.pdf).

The SAR ADC is built using 5 important blocks:
1. Anti-Aliasing Filter
2. [Sample and Hold](https://github.com/uday2012/sample_hold)
3. [Comparator](https://github.com/mou3ananya/prelayoutWork)
4. [SAR](https://github.com/shalini161/SAR_Logic)
4. [DAC](https://github.com/sherylcorina/R2R_DAC)


## Block Diagram of the SAR ADC IP

 <p align="center">
  <img width="750" height="450" src="/Images/block.png">
</p>


<img align="left" width="60" height="50" src=/Images/ng_logo.png>

## About Ngspice 
Ngspice is an open source mixed-signal circuit simulator.

### Installing Ngspice

#### For Ubuntu

Open your terminal and type the following to install Ngspice
```
$  sudo apt-get install -y ngspice
```

## Running the Simulation


To enter the Ngspice Shell, open the terminal & type:
```
$ ngspice
```
To simulate a netlist, type:
```
ngspice 1 ->  source <filename>.cir
```

You can exit from the Ngspice Shell by typing:
```
ngspice 1 ->  exit
```
 <p align="center"> or </p>
 
```
ngspice 1 ->  quit
```

## Pre-Layout Simulation

To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.

```
$  sudo apt install -y git
$  git clone https://github.com/ADC-TEAM2020/SAR_ADC
$  cd SAR_ADC/Simulation/PreLayout_v1.0/
```


### DC Analysis of SAR ADC [INPUT RANGE 0-3.3]


```
 Open the sar_adc.cir file and enter the input voltage [0V-3.3V] as shown in the image below.
```
 <p align="center">
  <img width="750" height="100" src="/Images/input.png">
</p>

Run the netlist file using the following command.

```
$  ngspice sar_adc.cir
```
Observe the corresponding Digital Output when EOC[End-of-Conversion Signal] is HIGH between 11.5us -12.0us

```
Vin = 2000mV
Digital Code= 1001101101 (621)
```
 <p align="center">
  <img width="1000" height="1000" src="/Images/sar1.png">
</p>

 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/clk.png">
</p>
 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/eoc.png">
</p>

 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/d8_d9.png">
</p>
 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/d6_d7.png">
</p>
 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/d4_d5.png">
</p>
 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/d2_d3.png">
</p>
 <p align="center">
  <img width="1000" height="200" src="/Images/ADC_v1.0/d0_d1.png">
</p>


### DNL Errors for Digital Codes [621-660]

**The DNL errors for digital codes (621-660) can be found [here](/Documentation/DNL.pdf)**

Ensure the repository is clone, and enter the following commands in your terminal to plot the DNL curve.

```
$  sudo apt-get install -y gnuplot
$  cd SAR_ADC/Simulation/PreLayout_v1.0/DNL/
$  gnuplot
```
```
gnuplot> load 'dnl.p'
```

 <p align="center">
  <img width="1200" height="400" src="/Images/dnl2.png">
</p>


## Issues | Improvements | Future Work

1. DNL error for lower digital codes needs to be reduced.
1. Sample & Hold must be optimized to improve hold capabilty.
2. Comparator design should be modified to reduce Deadband and Offset.
3. Opamp to be used in DAC must be optimized to give a better transient response and higher Bandwidth.
4. The number of transistors used in a SAR logic must be reduced. The Non-Redundant Successive Approximation Register architecture, which requires only 'N' D flip flops for N-bit conversion, can be employed for this.
5. Anti-Aliasing Filter yet to be designed.


## Contributors 

- **Sheryl Serrao** 
- **Ananya Ghorai**
- **Shalini  Priya**
- **Uday Vempalli**
- **Kunal Ghosh** 


## Acknowledgments

- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.
- Philipp Gühring, Software Architect, LibreSilicon Assocation
- Saroj Rout, Associate Professor & Chief Mentor of VLSI Center of Excellence SIT, Bhubaneswar, India
- Santunu Sarangi, Asst. Professor, SIT, Bhubaneswar, India
- Tim Edwards, Senior Vice President of Analog and Design at efabless corporation

## Contact Information

- Sheryl Serrao, Undergraduate Student, Mumbai University sherylcorina@gmail.com
- Ananya Ghorai, Pursuing M.Tech in VLSI Design, IIT(ISM) Dhanbad, ananyaghorai.2012@gmail.com
- Shalini Priya, M.Tech Embedded System, NIT Jamshedpur priyashalini161@gmail.com
- Uday Vempalli, Undergraduate Student,Siddhartha Institute Of Technology,udayvempalli99@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com
- Philipp Gühring, Software Architect, LibreSilicon Assocation pg@futureware.at
