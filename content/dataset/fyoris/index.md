+++
date = '2025-10-27T10:17:37+01:00'
draft = true
title = 'Fyoris: Full-polarimetric V2I MIMO channel sounding data sets @2.53GHz in urban environment, together with pertinent antenna array characteristics'
categories = ["Dataset"]
tags = ["SUB6","SOUNDING","RUSK"]
featured_image = "static/image.png"
+++

<!--img src="static/image.png" alt="Hugo Bild" width="50%"-->
![](static/image.png)

Seven measurement runs, selected from a measurement campaign in Bonn, Germany, are provided.
The environment is urban, the context is V2I from an elevated base station, the set-up is fully polarimetric MIMO with two 16 dual-pol element stacked circular arrays, configured as two circular rings of 8 elements each.
The frequency is 2,53GHz, the bandwidth 20MHz.
For easy access of relevant quantities, data and meta data are stored in HDF5 format.
For aiding interpretation of the data, full Tx and Rx array characteristics are included.

## Introduction

The data can be accessed and [downloaded from ReFoDaT](https://refodat.de/receive/refodat_mods_00000061).

## Measurement

<!--The measurement process is described in [here](https://ieeexplore.ieee.org/document/6929298).-->

| Property              | Value           |
|-----------------------|-----------------|
| Center Frequency      | 2.53 GHz        |
| Bandwidth             | 20 MHz          |
| Subcarrier Spacing    | 17.83 KHz       |
| MIMO Measurement Time | 54 ms           |
| TX Ports              | 32 (2x8x{H,V})  |
| RX Ports              | 32 (2x8x{H,V})  |

## Content and Format

The format of the data is described in the respective entries in [Documentation](/docu/).

We provide the measurement data in sampled frequency domain in `FrequencyResponses.h5` and the associated antenna array calibration data as `TUI_SPUCA2x8_I_20MHz.h5` (TX) and `TUI_SPUCA2x8_II_20MHz.h5` (RX) respectively.

## Applied Processing

The data was processed in such a way that the frequency response of the measurement device was removed as well as possible by means of appropriate back-to-back calibration and equalization.
What has not been removed is the angle- and polarization-dependent influence of each antenna port.
This is due to the fact that these change depending on the direction of departure and direction of arrival of each individual propagation path.
Hence, the deembedding of the antenna arrays can only be achieved by extracing the complete propagation information from the measurement data.

## Visualization

<!--
Say we wish to plot each TX-RX combination of measured impulse responses for a certain snapshot.
To this end, we need to transform the data from frequency domain into time domain.

```python
data = h5py.File(f"{datasetPath}/FrequencyResponses.h5")["FrequencyResponses"]

snapshots = [0, 67, 256, 468]

def asComplex(data):
    return data["real"] + 1j * data["imag"]

plt.figure()
for ii, ss in enumerate(snapshots):
    ax = plt.subplot(221 + ii)
    time = data["MetaData/Snapshot/TimeStamp"][ss].astype("datetime64[ns]")
    ax.set_title(f"Timestamp {time}", fontsize=4)
    for pptx in range(len(data["MetaData/Tx/AntennaPortID"])):
        pprx = 0
        plt.semilogy(
            np.abs(np.fft.ifft(asComplex(data["Data"][pptx, pprx, :, ss]))),
            linewidth=0.1,
        )
plt.savefig("pdps.png")
```

This snippet should yield something like the plot below:

![](static/pdps.png)
-->
## External References

- [Download at ReFoDaT](https://refodat.de/receive/refodat_mods_00000061)
- [DOI of the dataset](https://www.doi.org/10.71758/refodat.61)

## Citation

´´´
@Misc{som2025fyoris,
  doi = {10.71758/REFODAT.61},
  author =  {Sommerkorn, Gerd
  and Schneider, Christian
  and D{\"o}bereiner, Michael
  and Kotterman, Wim},
  title =  {Fyoris : Full-polarimetric V2I MIMO channel sounding data sets @2.53GHz in urban environment, together with pertinent antenna array characteristics},
  year =  {2025},
  keywords =  {channel sounding; MIMO; antenna arrays; propagation measurements},
  url =  {<https://refodat.de/receive/refodat_mods_00000061}>,
  language =  {en}
  copyright = {Creative Commons Attribution 4.0 International}
  publisher = {refodat - Repositorium f\"{u}r Forschungsdaten in Th\"{u}ringen},
}
´´´
