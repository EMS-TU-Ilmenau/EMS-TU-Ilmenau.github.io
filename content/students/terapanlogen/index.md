+++
date = '2025-11-24'
draft = false
title = 'Design and Implementation of a Configurable 15 GHz Local Oscillator Generator module for THz Sensing Units'
categories = ["Student Topics"]
tags = ["THz", "UWB", "Hardware"]
toc = false
+++

The multidimensional characterization of the radio channel and models derived from it are a core component in the development of radio systems for newly accessible frequency ranges. An important focus of current research is the (sub-)THz frequency range, which promises high data rates and low latency for future mobile communications standards (6G)[^ref1]. Due to significant changes compared to the familiar sub-6 GHz or mm-wave bands, metrology, i.e., the verification and characterization of measurement equipment, is also an important research topic that must deliver concepts for the calibration and certification of measurement technology in parallel with the actual applications. As part of the DFG-funded research group “METERACOM – Metrology for THz Communication,” the EMS department is developing metrological concepts for the multidimensional characterization of the radio channel.

<!--more-->

An important component of this is directional resolution, which is achieved by means of antenna groups and suitable signal processing. For this purpose, the METERACOM project equipped a 4-element linear array for the 300 GHz frequency range with RF components for the up-mixing of 4 independent baseband signals[^ref2]. To commission this measurement hardware, a suitable local oscillator (LO) signal in the baseband has to be generated.

Specific task description:

The main objective is to develop a configurable LO generator PCB module that generates the LO signals of the array frontend in the frequency range from 9 to 15 GHz (distributed via a LO distribution board [^ref3]).
Hereat the goal is to use the programmable RF synthesizer (LMX2595) that generates the LO signal and can be synchronized with an external or internal reference so that multiple of these units can be operated in unison. The given IC is equipped with a SPI interface to set up its correct mode of operation. Additionally there are several GPIO signals needed to fully control the IC's functions. Therefore the LO generator module has to be equipped with a multi-purpose bridge interface to directly access its control/configuration via USB (FT232H).
Taking into account correct termination and impedance matching, the student develops the circuit using “components off the shelf” (COTS), dimensions impedance-controlled structures based on knowledge of the dielectric properties of the substrate and the circuit parameters of the circuits used, and performs the route and place (layout) using KiCAD or EAGLE software.
The control of the configurable RF synthesizer IC is achieved using the given FTDI module. The student has to implement a control routine using the pyftdi [^ref4] python library inside a given software framework.

Due to their scope and their highly engineering-oriented nature, these topics are most suited for a student assitant or research project position.

#### Prerequisites

- Circuit Design: You are able to design analog/RF and digital circuitry (schematic and layout) using KiCad or EAGLE software tools. Through your knowledge of signal integrity and electromagnetic fields, propagation, and compatibility your design becomes robust and reliable.
- Prototyping/ Debugging: You are able to produce a working prototype of your design (mainly soldering, technical commissioning)
- Programming: You have basic to advanced programming skills in Python/Numpy for evaluation and visualisation as well as you are able to exploit Python/pyftdi library for SPI and GPIO interfacing. It is beneficial to have knowledge about serial interfaces in general.
- Laboratory work: You can use basic laboratory equipment such as signal generators and signal analyzers, know how to use and connect RF components, are familiar with calibration concepts, and can use Python/SCPI for measurement automation.
- Language: English/German (also in technical discussions).
- Programs targeted: EIT (B/M/D), II (B/M), MNT (M), CSP (M)

#### References

[^ref2]: [Phased Array operating at 300 GHz](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=7928868)
[^ref4]: [pyftdi](https://eblot.github.io/pyftdi/index.html)
[^ref1]: [Ultrahohe Datenraten bei Terahertz-Frequenzen übertragen](https://magazin.tu-braunschweig.de/pi-post/ultrahohe-datenraten-bei-terahertz-frequenzen-uebertragen/)
[^ref3]: [Distribution Topic] ({{< ref "/students/terapanlodist/index" >}})
