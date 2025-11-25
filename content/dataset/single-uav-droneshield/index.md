+++
date = '2025-04-25T16:19:46+02:00'
draft = true
title = 'Zenthos'
categories = ["Dataset"]
tags = ["ISAC", "UAV"]
featured_image = "static/image.png"
+++

![](static/image.png)

Abstract

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
The ISAC UAV dataset investigates the problem of localizing a drone using a distributed Multi-Sensor Integrated Sensing and Communication (MS-ISAC) setup. The meausrements were carried at a rooftop of a building in Ilmenau, Germany, were the measurement setup was installed, and the drone flied over a pre-determined route marked by waypoints at a given height and speed. Both the Channel Impulse Response (CIR) and groundtruth position of the drones are provided in this dataset. The provided dataset enables evaluation and development of ISAC algorithms for drone detection and tracking in municipal areas.


# Measurement Setup
The multistatic links consist of 1 transmitter and 3 receivers, all of them loacated at a rooftop.
The transmitter sent continuous OFDM-like signal that is captured by the receivers.

<Placeholder - image of the antenna positions>

The UAV was flying over pre-determined waypoints, as show as in th map below.
<iframe width="100%" height="500px" frameborder="0" allowfullscreen allow="geolocation" src="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=false&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true"></iframe><p><a href="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=true&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true">See full screen</a></p>


The details of the distributed channel sounder system used for the measurement can be found (here)[https://arxiv.org/abs/2210.07168].

# Dataset organization
The dataset is structured into 28 **runs**, determined by the flying path between the waypoints, referred to as track.
The track name can be found in the 'Info.json' file, in each run path and follows the format:

`<Start Point>_to_<End Point>_H<Height>_V<Velocity>_<Repetition>` 

Each run is organized into 3 subdirectories containing channel frequency responses for each of the receivers, and a subdirectory for the target groundtruth position.
The subdirectories for the frequency responses are labeled as:

`Tx_<Transmitter ID>_to_Rx<Receiver ID>`

and the groundtruth position as:

`UAV_<Start Waypoint>-<End Waypoint>`

Both file types include timestamps as metadata.  


# Citation

{: .note}
Please make sure to give proper references when you use the dataset in your own work.


The provided dataset, consisting of the measurement files and metadata, and all of the contents of the Github repository are licensed under the [**CC BY-NC-ND 4.0**](https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode).

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

# Downloading the dataset
## Preparation
In its current state, the dataset contains 60 different scenarios in 360 files. 
The total required disk space is about 200 GB.
As Git is not suitable (at least not without extensions) to store such large datasets, the dataset is stored on a different server at TU Ilmenau [1].
The repository provides a script `downloader.py` to download the dataset from the server. 

![Repository Structure](../assets/repository_structure.png)

We tried to keep the requirements minimal, but in case you experience any issues please check the `requirements.txt` file in the repository.

{: .note}
You can run `python -m pip install -r requirements.txt` from the repository root to install the required packages.

## Downloading
Clone this repository using the following command:
```
git clone https://github.com/EMS-TU-Ilmenau/isac-uav-dataset.git
```

![Cloning the repository](../assets/demo_clone.gif)

The `downloader.py` script provides a command-line interface to download the dataset.
It takes care of the download, decryption, unpacking, and verification of files.
Shasum hashes for the files in the `scenarions.shasums` also provide a way to track changes of the provided dataset files for the users (via the history of `scenarions.shasums`).

To download all available files, simply run the `downloader.py` script without any arguments:
```
python downloader.py
```
which will bring you into default mode.
In this case, all available scenarios will be downloaded.

{: .warning}
The full dataset consumes about 200 GB of disk space. Correspondingly, the time required to download all scenarios will depend on your internet connection. When working with a remote machine, we recommend a `screen` or `tmux` session.


![Cloning the repository](../assets/demo_downloader.gif)

Alternatively, you can also specify scenarios with:  
```
python downloader.py --scenario SCENARIO_1 SCENARIO_2 ... SCENARIO_N
```
Pass the desired scenarios separated by spaces, e.g.,
```
python downloader.py --scenario 1to2_H15_V11 2to3_H15_V11
```

To see all available options run:
```
python downloader.py --help
```

{: .note}
If you entered a wrong password `downloader.py`, just re-run the script. In this case, it will not re-download the file and instead access the previously downloaded version stored in the `.tmp` folder.

## External References

- [REFODAT]()
- [doi](https://www.doi.org/doi)

{: .fs-3}  
**Footnote**

{: .fs-2}
[1] - We want to thank Henning Schwanbeck from the Technische Universität Ilmenau Rechenzentrum for his continuous support with the provisioning of the measurement files.