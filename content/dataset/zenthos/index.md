+++
date = '2025-04-25T16:19:46+02:00'
draft = true
title = 'Zenthos: Multi-static Radio Channel Sounding for UAV Sensing at 3.75 GHz'
categories = ["Dataset"]
tags = ["ISAC", "UAV", "RADAR", "SOUNDING"]
featured_image = "static/zenthos.webp"
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

## Introduction

Zenthos was recorded as part of an outdoor measurement campaign in the DroneShield project, carried out in May 2021.
Both the Channel Impulse Response (CIR) and groundtruth position of the drones are provided in this dataset.
Zenthos enables evaluation and development of ISAC algorithms for drone detection and tracking in municipal areas, in presence of realisitc background clutter and other targets of opportunity.
Its data has been proven effective for training and evaluation of machine learning algorithms ([Schieler et al., 2025](https://ieeexplore.ieee.org/document/11031730)).

> Zenthos is a subset of the `ISAC-UAV-Dataset` published on [GitHub](https://ems-tu-ilmenau.github.io/isac-uav-dataset-docs/).
> To ensure compatability with our other datasets and their file format, Zenthos re-publishes its most insightful scenarios here.

## Getting Started

This dataset is published and available for download at the [following data repository]().
Once downloaded, use the Python snippets [provided](#loading-channel-data) to load the data.

## Recorded Data
The dataset contains the complex, time-varying channel frequency response (channel transfer function) and the ground-truth position of the target UAV in a latitude/longitude/height (Lat/Lon/H) coordinate frame referenced to WGS-84, measured using high-precision RTK devices. Each channel frequency response is associated with a Unix timestamp.

## Measurement Setup

The multistatic links consist of 1 transmitter and 3 receivers, all of them loacated at a rooftop.
The transmitter sent continuous OFDM-like signal that is captured by the receivers.

![](static/fhg-antenna.png)

The UAV was flying over pre-determined waypoints, as show as in th map below.
<iframe width="100%" height="500px" frameborder="0" allowfullscreen allow="geolocation" src="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=false&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true"></iframe><p><a href="//umap.openstreetmap.fr/en/map/untitled-map_966648?scaleControl=false&miniMap=false&scrollWheelZoom=true&zoomControl=true&editMode=disabled&moreControl=true&searchControl=null&tilelayersControl=null&embedControl=null&datalayersControl=true&onLoadPanel=undefined&captionBar=false&captionMenus=true">See full screen</a></p>

The details of the distributed channel sounder system used for the measurement can be found [here](https://arxiv.org/abs/2210.07168).

## Dataset organization

> TODO: We are not publishing different heights/speeds, so they should be eliminated from the descriptions. Lets stick with just waypoints.

The dataset is structured into 28 __runs__, determined by the flying path between the waypoints, referred to as tracks.
The track name can be found in the `Info.json` file, in each run path and follows the format:

`<Start Point>_to_<End Point>`

Each run is organized into 3 subdirectories containing channel frequency responses for each of the receivers, and a subdirectory for the target groundtruth position.
The subdirectories for the frequency responses are labeled as:

`Tx_<Transmitter ID>_to_Rx<Receiver ID>`

and the groundtruth position as:

`UAV_<Start Waypoint>-<End Waypoint>`

Both file types include timestamps as metadata.  

### Directory Structure

### HDF5 File Structure

## Code Samples and Further Notes
### Interpolating Position Information
While the data in each HDF5 file corresponds to the same time span, the data sampling rate is naturally different for the recorded frequency responses (80 MHz) and position data (~10 Hz). Furthermore, position information sampling rates could differ between nodes. If position information is required at the same rate as the frequency responses (for e.g. for the purpose of calculating ground-truth passive object parameters and comparing with the observed channel response), it is recommended to perform cubic spline interpolation on the `/PoseData/Height`, `/PoseData/Latitude` and `/PoseData/Longitude` datasets. A minimal snippet using Python and SciPy is provided below:

```python
import h5py
import numpy as np
from scipy.interpolate import CubicSpline

# Open the HDF5 file
with h5py.File("Location.h5", "r") as f:
    # Read timestamps and position datasets
    ts = f["/PoseData/MetaData/Snapshot/TimeStamp"][:]
    lat = f["/PoseData/Latitude"][:]
    lon = f["/PoseData/Longitude"][:]
    hgt = f["/PoseData/Height"][:]

# Example: target timestamps where we want interpolated positions
# (e.g., section of timestamps of 
# FrequencyResponses.h5:/FrequencyResponses/MetaData/Snapshot/TimeStamp)
target_ts = np.linspace(ts.min(), ts.max(), 1000)

# Perform cubic spline interpolation for each coordinate
lat_interp = CubicSpline(ts, lat, extrapolate=None)(target_ts)
lon_interp = CubicSpline(ts, lon, extrapolate=None)(target_ts)
hgt_interp = CubicSpline(ts, hgt, extrapolate=None)(target_ts)

# Example usage: print first few interpolated points
print("Interpolated positions (lat, lon, height):")
for i in range(5):
    print(f"{lat_interp[i]:.6f}, {lon_interp[i]:.6f}, {hgt_interp[i]:.2f}")
```

### Loading Channel Data

The complex channel transfer function is stored as a compound datatype in an HDF5 dataset located at the path `/FrequencyResponses/Data`. The fields named "real" and "imag" are used to represent the real and imaginary parts, respectively, of the complex values. This is illustrated with the following Python function:

```python
import h5py
import numpy as np

def load_complex_channel_data(file_path, sample_indices):
    """
    Loads complex channel data and associated axes.
    Arguments:
        file_path: str: Path to FrequencyResponses.h5 file
        sample_indices: Tuple[int, int]: A slice (start, stop) defining the
            slow-time (snapshot) samples to load from file.
    Returns:
        complex_data: np.ndarray: 2-D array (slow-time, frequency)
        ts: np.ndarray: array of timestamps corresponding to the loaded samples
        ff: np.ndarray: array of frequency values
    """
    sample_indices_slice = slice(sample_indices[0], sample_indices[1])
    timestamp_path = "/FrequencyResponses/MetaData/Snapshot/TimeStamp"
    frequencies_path = "/FrequencyResponses/MetaData/Frequency/Frequency"

    with h5py.File(file_path, "r") as f:
        # Read timestamp, frequency axes and compound dataset
        ts = f[timestamp_path][sample_indices_slice]
        ts_unitscaler = f[timestamp_path].attrs["UnitScaler"]

        ff = f[frequencies_path][:]
        ff_scaler = f[frequencies_path].attrs["UnitScaler"]

        data = f["/FrequencyResponses/Data"][sample_indices_slice]

    complex_data = data["real"] + 1j * data["imag"]

    return (
        complex_data,
        ts * ts_unitscaler,
        ff * ff_scaler,
    )
```

### Note on Position of the Receivers
The `Location*.h5` files for the transmitter and the receivers (`RX1`, `RX2`, `RX3`) were measured before the start of the measurement period. Hence, the timestamps do not correspond to the measurement time interval. When using the positions of the static nodes, simply average the positions values in each dataset.

## Related Publications

- [S. Schieler, S. Semper, C. Schneider and R. Thomä, "Measurement-Based Evaluation of CNN-Based Detection and Estimation for ISAC Systems," 2025 IEEE International Radar Conference (RADAR), Atlanta, GA, USA, 2025, pp. 1-6, doi: 10.1109/RADAR52380.2025.11031730.](https://ieeexplore.ieee.org/document/11031730), or on [Arxiv](https://arxiv.org/abs/2507.01799)
- [J. Beuster et al., "Measurement Testbed for Radar and Emitter Localization of UAV at 3.75 GHz," 2023 17th European Conference on Antennas and Propagation (EuCAP), Florence, Italy, 2023, pp. 1-5, doi: 10.23919/EuCAP57121.2023.10133118.](https://ieeexplore.ieee.org/document/10133118), or on [Arxiv](https://arxiv.org/abs/2210.07168v1)

Is your publication missing? Reach out and we will add it!

## External References

- [REFODAT](https://refodat.de/content/index.xml)
- [doi](https://www.doi.org/doi)
- [OSM](https://www.openstreetmap.org/)

## Citation

If you use this dataset, please cite the following data record:

```
@Misc{,
}
```

## Acknowledgement

We want to thank Henning Schwanbeck from the Technische Universität Ilmenau Rechenzentrum for his continuous support with the provisioning of the measurement files.
