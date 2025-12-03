+++
date = '2025-04-25T16:19:46+02:00'
draft = true
title = 'Zenthos'
categories = ["Dataset"]
tags = ["ISAC", "UAV"]
featured_image = "static/image.png"
+++

![](static/banner.jpg)

The Zenthos dataset provides measurements for detecting and localizing a single UAV using a distributed Multi-Sensor Integrated Sensing and Communication (MS-ISAC) system. Data were collected on a rooftop in Ilmenau, Germany, using one transmitter and three receivers that recorded a continuous OFDM-like signal while a drone followed predefined waypoint routes. Each run includes synchronized channel impulse responses (CIRs) for all links and precise groundtruth UAV positions. The 28 flight runs cover different paths, heights, and speeds, making the dataset well suited for developing and evaluating ISAC algorithms for UAV detection and tracking in urban environments using distributed settings. Zenthos has also proven effective for machine-learning-based approaches to drone localization.

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
| Size                 | ~ 200 GB     |

# Introduction
The Zenthos investigates the problem of detecting and localizing a single drone using a distributed Multi-Sensor Integrated Sensing and Communication (MS-ISAC) setup.
The meausrements were carried at a rooftop of a building in Ilmenau, Germany, were the measurement setup was installed, and the drone flied over a pre-determined route marked by waypoints at a given height and speed.
Both the Channel Impulse Response (CIR) and groundtruth position of the drones are provided in this dataset.
The Zenthos dataset enables evaluation and development of ISAC algorithms for drone detection and tracking in municipal areas, in presence of background clutter.
The data from this can has been proven effective for training and evaluation of machine learning algorithms ([see this paper](https://arxiv.org/abs/2507.01799)).


# Measurement Setup
The multistatic links consist of 1 transmitter and 3 receivers, all of them loacated at a rooftop.
The transmitter sent continuous OFDM-like signal that is captured by the receivers.

![](static/fhg-antenna.png)


The UAV was flying over pre-determined waypoints, as show as in th map below.
<iframe width="100%" height="500px" frameborder="0" allowfullscreen allow="geolocation" src="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=false&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true"></iframe><p><a href="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=true&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true">See full screen</a></p>


The details of the distributed channel sounder system used for the measurement can be found [here](https://arxiv.org/abs/2210.07168).

# Dataset organization
The dataset is structured into 28 **runs**, determined by the flying path between the waypoints, referred to as tracks.
The track name can be found in the 'Info.json' file, in each run path and follows the format:

`<Start Point>_to_<End Point>_H<Height>_V<Velocity>_<Repetition>` 

Each run is organized into 3 subdirectories containing channel frequency responses for each of the receivers, and a subdirectory for the target groundtruth position.
The subdirectories for the frequency responses are labeled as:

`Tx_<Transmitter ID>_to_Rx<Receiver ID>`

and the groundtruth position as:

`UAV_<Start Waypoint>-<End Waypoint>`

Both file types include timestamps as metadata.  


# Citation
Please make sure to give proper references when you use the dataset in your own work.

The Zenthos dataset, consisting of the measurement files and metadata, and all of the contents of the Github repository are licensed under the [**CC BY-NC-ND 4.0**](https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode).

To use this dataset and/or scripts or any modified part of them, cite:
```tex
@INPROCEEDINGS{10133118,
  author={Beuster, Julia and Andrich, Carsten and Döbereiner, Michael and Schieler, Steffen and Engelhardt, Maximilian and Schneider, Christian and Thomä, Reiner},
  booktitle={2023 17th European Conference on Antennas and Propagation (EuCAP)}, 
  title={Measurement Testbed for Radar and Emitter Localization of UAV at 3.75 GHz}, 
  year={2023},
  pages={1-5},
  doi={10.23919/EuCAP57121.2023.10133118}
}
```


## External References

- [REFODAT](https://refodat.de/content/index.xml)
- [doi](https://www.doi.org/doi)

# Acknowledgement

We want to thank Henning Schwanbeck from the Technische Universität Ilmenau Rechenzentrum for his continuous support with the provisioning of the measurement files.