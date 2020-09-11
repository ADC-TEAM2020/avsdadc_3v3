# SAR Analog-To-Digital Converter
This repository will maintain simulation files and other relevant files of the SAR ADC block worked on in the VSD Summer Online Internship 2020

*Note: Circuit requires further optimization to improve performance. Design yet to be modified.*

Table of contents
=================
<!--ts-->
  
   * [A Glance at the ADC IP](#a-glance-at-the-adc-ip)
   * [Block Diagram of the SAR ADC IP](#block-diagram-of-the-sar-adc-ip)
   * [Internal Block Diagram of the SAR ADC IP](#internal-block-diagram-of-the-sar-adc-ip)
   * [Performance Parameters of the SAR ADC](#sar-adc-performance-parameters)
   * [Subcircuits within the SAR ADC](#subcircuits-within-the-sar-adc-ip)
      * [Circuit Diagram of Sample & Hold](#circuit-diagram-of-sample--hold)
      * [Circuit Diagram of Clock Divider](#circuit-diagram-of-clock-divider)
      * [Circuit Diagram of Comparator](#circuit-diagram-of-comparator)
      * [Circuit Diagram of R-2R DAC](#circuit-diagram-of-r-2r-dac)
      * [Circuit Diagram of SAR Logic](#circuit-diagram-of-sar-logic)
   * [Layout](#layout)
      * [Layout of Complete SAR ADC](#layout-of-sar-adc)
      * [Layout of Sample & Hold](#layout-of-sample-and-hold-circuit)
      * [Layout of Clock Divider](#layout-of-clock-divider)
      * [Layout of Comparator](#layout-of-comparator)
      * [Layout of R-2R DAC](#layout-of-r-2r-dac)
      * [Layout of SAR Logic](#layout-of-sar-logic)
   * [Running the Simulation](#running-the-simulation)
   * [Pre-Layout Simulation](#pre-layout-simulation)
   * [Post-Layout Simulation](#post-layout-simulation)
   * [Open-Source VLSI Tools](#open-source-vlsi-tools)
       * [About Ngspice](#about-ngspice)
       * [About Magic](#magic)
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
  <img width="850" height="550" src="/Images/NEW_C/block1.png">
</p>

## Internal Block Diagram of the SAR ADC IP

 <p align="center">
  <img width="900" height="550" src="/Images/block.png">
</p>



## SAR ADC Performance Parameters 

| Parameter| Description| Min | Typ | Max | Unit | Condition |
| :---:  | :-: | :-: | :-: | :---:  | :-: | :-: |
|VDDA|Analog Supply Voltage||3.2||V|T=40C to 85C|
|VDD|Digital Supply Voltage||1.8||V|T=40C to 85C|
|VREFH|Reference Voltage High|||3.3|V|T=40C to 85C|
|VREFL|Reference Voltage Low|0|||V|T=40C to 85C|
|FCLK|Clock Frequency|0.01|1|2|MHz|T=40C to 85C|
|RES|Resolution||10||Bits|For all above typical conditions (T=27C)|
|INL|Integral Non-Linearity||||LSB|For all above typical conditions (T=27C)|
|DNL|Differential Non-Linearity||||LSB|For all above typical conditions (T=27C)|
|RIN|Analog Input Resistance||110||kohm|T=-40C - 85C|
|CL|Analog Input Capacitance||||pF|VT=-40C - 85C|
|IVREF|Current through Reference Source||1.06||mA|For all above typical conditions (T=27C)|
|T1|Start signal duration||0.5||Clock Cycles|T=-40C - 85C|
|TCONV|Conversion Time||12||Clock Cycles|T=-40C - 85C|
|T4|Tracking Time||4||us|T=-40C - 85C|
|IDDA|Analog Supply Current||2.97619||mA|T=27C, EN=1,FCLK=2MHz|
|IDDA|Analog Supply Current||||pA|T=27C, EN=0,FCLK=2MHz|
|IDDD|Digital Supply Current||2.833||mA|T=27C, EN=1,FCLK=2MHz|
|IDDD|Digital Supply Current||||pA|T=27C, EN=0,FCLK=2MHz|


## Subcircuits within the SAR ADC IP

### Circuit Diagram of Sample & Hold 

 <p align="center">
  <img width="400" height="300" src="/Images/NEW_C/cir_sam.png">
</p>

### Circuit Diagram of Clock Divider

 <p align="center">
  <img width="1000" height="400" src="/Images/NEW_C/cir_clk.png">
</p>

### Circuit Diagram of Comparator 

 <p align="center">
  <img width="850" height="550" src="/Images/NEW_C/cir_comp.png">
</p>


### Circuit Diagram of R-2R DAC 

 <p align="center">
  <img width="1200" height="500" src="/Images/NEW_C/cir_dac.png">
</p>

### Circuit Diagram of SAR Logic 

 <p align="center">
  <img width="1200" height="400" src="/Images/NEW_C/cir_sar.png">
</p>



## Layout

### Layout of SAR ADC

 <p align="center">
  <img width="1200" height="600" src="/Images/NEW_C/adc_lay1.png">
</p>

### Layout of Sample and Hold Circuit

 <p align="center">
  <img width="370" height="450" src="/Images/L/sample1.png">
</p>


### Layout of Comparator

 <p align="center">
  <img width="500" height="450" src="/Images/c1.png">
</p>

### Layout of R-2R DAC

 <p align="center">
  <img width="800" height="550" src="/Images/L/dac1.png">
</p>


### Layout of SAR Logic

 <p align="center">
  <img width="1000" height="550" src="/Images/L/sar1.png">
</p>

### Layout of Clock Divider

 <p align="center">
  <img width="700" height="500" src="/Images/NEW_C/clk_mag.png">
</p>






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
### Transfer Function of SAR ADC [INPUT RANGE 0-3.3]

 <p align="center">
  <img width="1200" height="600" src="/Images/transfer.png">
</p>

### Waveform Analysis of SAR ADC [INPUT RANGE 0-3.3]


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

## Pre-Layout DNL Errror

<p align="center">
  <img width="1000" height="400" src="/Images/pre_dnl1.png">
</p>

**Max DNL Error = 7.663975155279 LSB**


## Pre-Layout INL Errror

<p align="center">
  <img width="1000" height="400" src="/Images/pre_inl1.png">
</p>

## Post Layout Simulation


### Transfer Function of SAR ADC [INPUT RANGE 0-3.3]

 <p align="center">
  <img width="1200" height="600" src="/Images/post_tran_1.png">
</p>

## Post-Layout DNL Errror

<p align="center">
  <img width="1000" height="400" src="/Images/post_dnl1.png">
</p>

## Post-Layout INL Errror

<p align="center">
  <img width="1000" height="400" src="/Images/post_inl1.png">
</p>

## Open-Source VLSI Tools


<img align="left" width="60" height="50" src=/Images/ng_logo.png>

## About Ngspice 
Ngspice is an open source mixed-signal circuit simulator.

### Installing Ngspice

#### For Ubuntu

Open your terminal and type the following to install Ngspice
```
$  sudo apt-get install -y ngspice
```

<img align="left" width="70" height="50" src=/Images/magic.png>

## Magic
 
 Magic is a VLSI layout tool. 

Type the following to install Magic in Ubuntu
```
$  wget http://opencircuitdesign.com/magic/archive/magic-8.3.54.tgz
$  tar xvfz magic-8.3.54.tgz
$  cd magic-8.3.54
$  ./configure
$  sudo make
$  sudo make install
```


## Issues | Improvements | Future Work

1. Script to automate DNL/INL Calculations completely will be developed.
2. Layout will be redone following good Mixed Signal Layout practices.
3. INL will be recalculated using the Best Fit Curve method, accounting for gain and offset error.
4. DNL error for lower digital codes needs to be reduced.
5. Sample & Hold must be optimized to improve hold capabilty.
6. Comparator design should be modified to reduce Deadband and Offset.
7. Opamp to be used in DAC must be optimized to give a better transient response and higher Bandwidth.
8. The number of transistors used in a SAR logic must be reduced. The Non-Redundant Successive Approximation Register architecture, which requires only 'N' D flip flops for N-bit conversion, can be employed for this.
9. Anti-Aliasing Filter yet to be designed.


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
