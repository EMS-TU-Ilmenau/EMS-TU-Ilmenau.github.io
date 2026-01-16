+++
date = '2026-01-15T17:00:00+02:00'
draft = false
title = 'Rhino: Bistatic Delay-Doppler Reference for Passive Radar Applications'
categories = ["Dataset"]
tags = ["Radar", "Reference Dataset", "Delay-Doppler Estimation", "ISAC"]
featured_image = "static/rhino_peak.jpg"
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

"Rhino" is part of a measurement campaign that took place in Ilmenau, Germany in February 2019. The measurements have been conducted in a controlled environment within the virtual road simulation and test area (VISTA) which is part of the Thüringer Innovationszentrum Mobilität (ThIMo). The goal of the campaign was to provide metrolocically assessable SISO channel data which can be utilized to evaluate and benchmark delay-Doppler parameter estimation algorithms. Therefore, the measurement setup comprises two rotating spheres which result in two distinct propagation paths within the measured channel frequency responses. The "Rhino" datasets provides these channel frequency responses for a variety of bistatic measurement angles, covering forward, backward, and bistatic scattering scenarios. Consequently, the available data allows for the assessment of delay-Doppler parameter estimation algorithms under varying conditions, including changes in the ratio of Line-of-Sight (LoS) strength to target reflection strength, as well as the resolution of propagation paths that are below the Rayleigh limit.

## Applications
This dataset has a number of possible applications, for example
* the validation of radar algorithms in a controlled environment (passive target detection, tracking, and localization) or
* the assessment of the high resolution capabilities of delay-Doppler estimation algorithms or
* the performance comparison of different parameter estimation algorithms.

## Getting Started

This dataset is published and available for download at the [following data repository](https://refodat.de/receive/refodat_mods_00000072). Once downloaded, use the Python snippets [provided](#loading-channel-data) to load the data.

## Measurement Setup

The [following article](https://ietresearch.onlinelibrary.wiley.com/doi/10.1049/iet-map.2019.0991) includes a detailed description of the measurement setup and some initial delay-Doppler parameter estimation results. Two metallic spheres are mounted on a metal rod attached to a motor. The bistatic measurement angle $\delta$ spans between the transmitter (TX), the motor, and the receiver (RX). Within the data, this angle varies in steps of ten degrees. As a result, the channel measurements include forward $(\delta \approx 180^\circ)$, backward $(\delta \approx 0^\circ)$, and bistatis scattering scenarios. Below you can find a schematic drawing of the setup.

![](static/rhino_measurement_setup.png)

By simultaneously recording channel frequency responses and the positions of TX, RX, and both spheres, it is possible to calculate the analytical delay-Doppler parameters of both spheres. These values serve as ground truth in the corresponding delay-Doppler spectra, with is shown by the following figure.

![](static/rhino_dd_example.png)

## Data Format

### Directory Structure

The datasete has the following structure.

```
rhino/
├── results
│   ├── cfar
│   │   ├── Results_delta0.h5
│   │   ├── Results_delta10.h5
│   │   ├── Results_delta20.h5
│   │   └── ...
│   ├── deepest
│   │   ├── Results_delta0.h5
│   │   └── ...
│   └── pymax
│       ├── Results_delta0.h5
│       └── ...
├── Sphere_1
│   └── Data
│       ├── Info.json
│       └── Location.h5
├── Sphere_2
│   └── Data
│       ├── Info.json
│       └── Location.h5
└── Tx_0_to_Rx_0-350
    └── Data
        ├── FrequencyResponses.h5
        ├── LocationRx.h5
        └── LocationTx.h5
```
The subdirectory 'Tx_0_to_Rx_0-350/' comprises the measured channel frequency responses 'FrequencyResponses.h5' and the corresponding positions of TX 'LocationTx.h5' and RX 'LocationRx.h5'.
Furthermore, 'Sphere_1/' and 'Sphere_2/' store the location information of the two passive targets in within the 'Location.h5' files and some additional target-related meta information in the 'Info.json' files.
In addition to the measurements, we provide our delay-Doppler parameter estimation results of the data within the 'results/' directory utilizing three different algorithms, namely PyMax, DeepEst, and CFAR. These results are part of a measurement-based performance comparison of delay-Doppler parameter estimation algorithms. More information about the three algorithms and the utilization of their results for comparison can be found [here](https://www.db-thueringen.de/receive/dbt_mods_00063482) and [here](https://arxiv.org/abs/2510.16200). The subdirectory for each algorithm comprises one file 'Results_delta{delta}.h5' for every bistatic measurement angle $\delta$. 

### File Format

We store the data within HDF5 files. An abstract description of this file format can be found [here](https://ems-tu-ilmenau.github.io/docu/basicdataspecs/). When working with HDF5 files, we found the 'h5ls' command line tool extremly helpful. This tool enables us to generate tree-like overviews of HDF5 files, thereby presenting all relevant information, for example group and dataset names, dataset shapes, and available meta data. Utilizing this information, it is simple to navigate the HDF5 file and load the desired data into memory.
The 'h5ls' tool is available on the official [HDF5 website](https://support.hdfgroup.org/documentation/hdf5/latest/_h5_t_o_o_l__l_s__u_g.html) and you can analyze an HDF5 file by invoking the following command.
```bash
h5ls -r h5_file.h5
```
The following sections introduce the three different HDF5 files that are present within the "Rhino" dataset.

#### Frequency Response File

The 'FrequencyResponses.h5' file has the following structure
```bash
h5ls -r FrequencyResponses.h5
/                        Group
/FrequencyResponses      Group
/FrequencyResponses/Data Dataset {15600, 1024, 36}
/FrequencyResponses/MetaData Group
/FrequencyResponses/MetaData/Angle Group
/FrequencyResponses/MetaData/Angle/BistaticAngle Dataset {36}
/FrequencyResponses/MetaData/Frequency Group
/FrequencyResponses/MetaData/Frequency/Frequency Dataset {1024}
/FrequencyResponses/MetaData/Snapshot Group
/FrequencyResponses/MetaData/Snapshot/Index Dataset {15600}
/FrequencyResponses/MetaData/Snapshot/TimeStamp Dataset {15600}
```
The 'FrequencyResponses' group comprises the actual channel frequency responses within the dataset 'Data'. This data is of shape $(15600 \times 1024 \times 36)$, that is $\text{Symbol Timestamp} \times \text{Subcarrier Frequency} \times \text{Bistatic Measurement Angle}$. In addition, the 'MetaData' group comprises the actual physical values of these measurement dimensions.

#### Location Files

The individual location files store the location of transmitter, receiver, and both spheres.
The 'LocationTx.h5' file contains the position and orientation information of the TX, which did not change during the complete measurement campaign. Hence, all the datasets include only one element.
```bash
h5ls -r LocationTx.h5
                        Group
/PoseData                Group
/PoseData/MetaData       Group
/PoseData/MetaData/Angle Group
/PoseData/MetaData/Angle/BistaticAngle Dataset {1}
/PoseData/PosX           Dataset {1}
/PoseData/PosY           Dataset {1}
/PoseData/PosZ           Dataset {1}
/PoseData/RotX           Dataset {1}
/PoseData/RotY           Dataset {1}
/PoseData/RotZ           Dataset {1}
```

The location of the RX did not change during one measurement. However, it was varies between the measurement to create different bistatic measuremnt angles $\delta$. Consequently, all HDF5 datasets have one entry for each $\delta$.
```bash
h5ls -r LocationRx.h5
/                        Group
/PoseData                Group
/PoseData/MetaData       Group
/PoseData/MetaData/Angle Group
/PoseData/MetaData/Angle/BistaticAngle Dataset {36}
/PoseData/PosX           Dataset {36}
/PoseData/PosY           Dataset {36}
/PoseData/PosZ           Dataset {36}
/PoseData/RotX           Dataset {36}
/PoseData/RotY           Dataset {36}
/PoseData/RotZ           Dataset {36}
```

In contrast, the positions of the spheres did vary during one measurement. The corresponding positions have been recorded with the same sample rate as the frequency response symbols, resulting in $15,600$ positions. Since the trajectories of the spheres were similar for all measurements, the sphere position does not depend on $\delta$.
```bash
h5ls -r Location.h5
/                        Group
/PoseData                Group
/PoseData/MetaData       Group
/PoseData/MetaData/Snapshot Group
/PoseData/MetaData/Snapshot/Index Dataset {15600}
/PoseData/MetaData/Snapshot/TimeStamp Dataset {15600}
/PoseData/PosX           Dataset {15600}
/PoseData/PosY           Dataset {15600}
/PoseData/PosZ           Dataset {15600}
/PoseData/RotX           Dataset {15600}
/PoseData/RotY           Dataset {15600}
/PoseData/RotZ           Dataset {15600}
```

#### Result Files

The result files store parameter estimation results from the measured frequency responses. In fact, we performed delay-Doppler estimation on non-overlapping frames of size $(100 \times 1024)$. This choice implies that one snapshots comprises $100$ frequency response symbols, resulting in $156$ frames for the complete dataset.
```bash
h5ls -r Results_delta0.h5
/                        Group
/Results                 Group
/Results/Delay           Dataset {156}
/Results/Doppler         Dataset {156}
/Results/MetaData        Group
/Results/MetaData/Snapshot Group
/Results/MetaData/Snapshot/Index Dataset {156}
/Results/MetaData/Snapshot/TimeStamp Dataset {156}
/Results/PowGamma        Dataset {156}
/Results/dBGamma         Dataset {156}
```
The 'Snapshot' group includes the index and timestamp of the first snapshot of each frame. For each frame, the results include a varying number of propagation paths, where each path has a propagation delay, doppler shift, and path power. Loading one of these parameters yields a nested `np.ndarray` of one-dimensional `np.ndarray`'s.

## Data Processing

## External References

- [REFODAT]()
- [doi](https://www.doi.org/doi)

## Citation

```
@dataset{
    
}
```
