+++
date = '2025-04-25T16:19:46+02:00'
draft = true
title = 'Zenthos: Multi-static Radio Channel Sounding for UAV Sensing at 3.75 GHz'
categories = ["Dataset"]
tags = ["ISAC", "UAV"]
featured_image = "static/banner.jpg"
+++

__Zenthos__ provides measurements for detecting and localizing a single UAV using a distributed Multi-Sensor Integrated Sensing and Communication (MS-ISAC) system.
Measurements were performed in a suburban outdoor scenario with equipement stationed on a rooftop in Ilmenau, Germany.
It used one transmitter and three receivers to transmit and OFDM-like signals and record then channel transfer functions for each Tx-Rx link.

We used a UAV (or drone) as the designated sensing target, flying it on predefined routes between waypoints.
An RTK attached to the UAV recorded accurate groundtruth information for position and velocity, which combined with the provided Tx and Rx positions, is sufficient to compute the UAVs propagation parameters.
Combining the CTFs with the UAV groundtruths yields a labeled dataset, suitable for the development and testing of signal processing algorithms for parameter estimation, RADAR detection and distributed sensing in general.
Zenthos is also suitable for Machine-Learning based approaches to drone localization.

The dataset includes 27 flight runs cover different trajectories and distance from the measurement equipment.
<!--more-->

| Property             | Value        |
|----------------------|--------------|
| Bandwidth            | 80 MHz       |
| Number of Subcarriers| 1280         |
| TX Waveform          | OFDM         |
| Carrier Frequency    | 3.75 GHz     |
| Environment Type     | Outdoor      |
| Symbol Length        | 16 µs        |
| Antenna Type         | Directional  |
| Geometry             | Multistatic  |
| Size                 | ~ 125 GB     |

# Introduction

Zenthos was recorded as part of an outdoor measurement campaign in the DroneShield project, carried out in May 2021.
Both the Channel Impulse Response (CIR) and groundtruth position of the drones are provided in this dataset.
Zenthos enables evaluation and development of ISAC algorithms for drone detection and tracking in municipal areas, in presence of realisitc background clutter and other targets of opportunity.
Its data has been proven effective for training and evaluation of machine learning algorithms ([Schieler et al., 2025](https://ieeexplore.ieee.org/document/11031730)).

> Zenthos is a subset of the `ISAC-UAV-Dataset` published on [GitHub](https://ems-tu-ilmenau.github.io/isac-uav-dataset-docs/).
> To ensure compatability with our other datasets and their file format, Zenthos re-publishes its most insightful scenarios here.

# Getting Started

This dataset is published and available for download at the [following data repository]().
Once downloaded, use the Python snippets [provided](#loading-channel-data) to load the data.

# Recorded Data

# Measurement Setup

The multistatic links consist of 1 transmitter and 3 receivers, all of them loacated at a rooftop.
The transmitter sent continuous OFDM-like signal that is captured by the receivers.

![](static/fhg-antenna.png)

The UAV was flying over pre-determined waypoints, as show as in th map below.
<iframe width="100%" height="500px" frameborder="0" allowfullscreen allow="geolocation" src="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=false&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true"></iframe><p><a href="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=true&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true">See full screen</a></p>

The details of the distributed channel sounder system used for the measurement can be found [here](https://arxiv.org/abs/2210.07168).

# Dataset organization

> TODO: We are not publishing different heights/speeds, so they should be eliminated from the descriptions. Lets stick with just waypoints.

The dataset is structured into 28 __runs__, determined by the flying path between the waypoints, referred to as tracks.
The track name can be found in the 'Info.json' file, in each run path and follows the format:

`<Start Point>_to_<End Point>`

Each run is organized into 3 subdirectories containing channel frequency responses for each of the receivers, and a subdirectory for the target groundtruth position.
The subdirectories for the frequency responses are labeled as:

`Tx_<Transmitter ID>_to_Rx<Receiver ID>`

and the groundtruth position as:

`UAV_<Start Waypoint>-<End Waypoint>`

Both file types include timestamps as metadata.  

# Related Publications

- [S. Schieler, S. Semper, C. Schneider and R. Thomä, "Measurement-Based Evaluation of CNN-Based Detection and Estimation for ISAC Systems," 2025 IEEE International Radar Conference (RADAR), Atlanta, GA, USA, 2025, pp. 1-6, doi: 10.1109/RADAR52380.2025.11031730.](https://ieeexplore.ieee.org/document/11031730), or on [Arxiv](https://arxiv.org/abs/2507.01799)
- [J. Beuster et al., "Measurement Testbed for Radar and Emitter Localization of UAV at 3.75 GHz," 2023 17th European Conference on Antennas and Propagation (EuCAP), Florence, Italy, 2023, pp. 1-5, doi: 10.23919/EuCAP57121.2023.10133118.](https://ieeexplore.ieee.org/document/10133118), or on [Arxiv](https://arxiv.org/abs/2210.07168v1)

Is your publication missing? Reach out and we will add it!

# External References

- [REFODAT](https://refodat.de/content/index.xml)
- [doi](https://www.doi.org/doi)
- [OSM](https://www.openstreetmap.org/)

## Citation

If you use this dataset, please cite the following data record:

```
@Misc{,
}
```

# Acknowledgement

We want to thank Henning Schwanbeck from the Technische Universität Ilmenau Rechenzentrum for his continuous support with the provisioning of the measurement files.
