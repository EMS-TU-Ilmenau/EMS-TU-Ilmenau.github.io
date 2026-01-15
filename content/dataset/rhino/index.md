+++
date = '2026-01-15T17:00:00+02:00'
draft = false
title = 'Rhino: Bistatic Delay-Doppler Reference for Passive Radar Applications'
categories = ["Dataset"]
tags = ["Radar", "Reference Dataset", "Delay-Doppler Estimation", "ISAC"]
featured_image = "static/rhino_full.jpg"
[params]
    math=true
+++

The "Rhino" dataset comprises multiple bistatic radio channel measurements between one stationary transmitter and one stationary receiver recorded within a controlled environment. During the individual measurements, a target emulator rotates two metallic spheres, thereby creating two passive targets within the wireless channel. Since the position of transmitter, receiver, and both spheres have been recorded during the measurements, it is possible to calculate an analytical delay-Doppler ground truth for the multipath components of both spheres. Consequently, "Rhino" constitutes a benchmark for the objective and reproducible evaluation of delay-Doppler estimation algorithms.

<!--more-->

| Property             | Value        |
|----------------------|--------------|
| Center Frequency | 5.9 GHz |
| Signal Type | Multi-Sinus |
| Symbol Duration | 64 us |
| Bandwidth | 160 MHz |
| Subcarriers | 1024 |
| Subcarrier Spacing | 156.25 kHz |
| Number of TXs | 1 |
| Number of RXs | 1 |

{{< embed-video "static/rhino_preview.mp4" >}}

## Introduction

## Measurement

## Data Format

## Data Processing

## External References

- [REFODAT]()
- [doi](https://www.doi.org/doi)

## Citation

```
@dataset{
    
}
```
