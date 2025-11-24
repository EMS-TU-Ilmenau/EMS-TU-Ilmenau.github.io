+++
date = '2025-10-27T10:17:37+01:00'
draft = false
title = 'Fyoris: Full-polarimetric V2I MIMO channel sounding data sets @2.53GHz in urban environment'
categories = ["Dataset"]
tags = ["SUB6","SOUNDING","RUSK"]
featured_image = "static/image.png"
+++

Seven measurement runs, selected from a measurement campaign in Bonn, Germany, are provided.
The environment is urban, the context is V2I from an elevated base station, the set-up is fully polarimetric MIMO with two 16 dual-pol element stacked circular arrays, configured as two circular rings of 8 elements each.
The frequency is 2,53GHz, the bandwidth 20MHz.
For easy access of relevant quantities, data and meta data are stored in HDF5 format.
For aiding interpretation of the data, **full Tx and Rx array characteristics** are included.

## Introduction

The data can be accessed and [downloaded from ReFoDaT](https://refodat.de/receive/refodat_mods_00000061).

## Measurement
<!-- div style="position: relative; width: 100%; padding-top: 231.2%;border: 0;">
    <iframe src="static/Data.pdf#toolbar=0&navpanes=0&scrollbar=0"
           type="application/pdf"
           style="position:absolute; top:0; left:0; width:100%; height:100%;border: no; background:white;">
    </iframe>

## html
<iframe src="/fyoris/Data.html" style="width:100%; height:600px; border:0;"></iframe>

## md
<iframe src="/fyoris/Data.md" style="width:100%; height:600px; border:0;"></iframe>


```mermaid
---
title: Test
displayMode: compact
config:
  theme: neutral
  look: neo
  themeVariables:
    lineColor: gray
  layout: elk
---

</div -->

## svg
<iframe src="static/Data.svg" style="width:100%; height:600px; border:0;"></iframe>

## md
{{< mermaid theme="neutral" lineColor="gray" layout="elk" >}}
flowchart LR
_scratch_som_ReFoDat_Fyoris_Data@{label: "Data", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_ArrayData@{label: "ArrayData", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_ArrayData:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayRx.h5["ArrayRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/ArrayData/ArrayRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_ArrayData --> _scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayRx.h5
_scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayTx.h5["ArrayTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/ArrayData/ArrayTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_ArrayData --> _scratch_som_ReFoDat_Fyoris_Data_ArrayData_ArrayTx.h5
_scratch_som_ReFoDat_Fyoris_Data --> _scratch_som_ReFoDat_Fyoris_Data_ArrayData
_scratch_som_ReFoDat_Fyoris_Data_Runs@{label: "Runs", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11@{label: "Bonn_MT10-11", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT10-11/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT10-11/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT10-11/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT10-11
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18@{label: "Bonn_MT17-18", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT17-18/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT17-18/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT17-18/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT17-18
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19@{label: "Bonn_MT18-19", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT18-19/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT18-19/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT18-19/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT18-19
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4@{label: "Bonn_MT3-4", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT3-4/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT3-4/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT3-4/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT3-4
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5@{label: "Bonn_MT4-5", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT4-5/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT4-5/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT4-5/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT4-5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50@{label: "Bonn_MT49-50", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT49-50/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT49-50/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT49-50/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT49-50
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9@{label: "Bonn_MT8-9", shape: procs}
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9:::colorGroup
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_FrequencyResponses.h5["FrequencyResponses.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_FrequencyResponses.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_FrequencyResponses.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT8-9/FrequencyResponses.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_FrequencyResponses.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationRx.h5["LocationRx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationRx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationRx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT8-9/LocationRx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationRx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationTx.h5["LocationTx.h5"]
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationTx.h5:::colorDataset
click _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationTx.h5 "https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT8-9/LocationTx.h5" "Öffne Datei in Refodat"
_scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9 --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9_LocationTx.h5
_scratch_som_ReFoDat_Fyoris_Data_Runs --> _scratch_som_ReFoDat_Fyoris_Data_Runs_Bonn_MT8-9
_scratch_som_ReFoDat_Fyoris_Data --> _scratch_som_ReFoDat_Fyoris_Data_Runs

%% Farbdefinitionen
classDef colorGroup stroke-width:1px, stroke-dasharray:none, fill:#99BBD4,stroke:#003359,color:#003359
classDef colorDataset   stroke-width:1px, stroke-dasharray:none, fill:#FFD7AA,stroke:#CC5500,color:#CC5500

classDef TUIl-orange        fill:#FF7900,stroke:#FF7900,color:#ffffff
classDef TUIl-blue          fill:#003359,stroke:#003359,color:#ffffff
classDef TUIl-green         fill:#00747A,stroke:#00747A,color:#ffffff
classDef TUIl-grey          fill:#A5A5A5,stroke:#A5A5A5,color:#000000

classDef TUIl-orange-bright fill:#FFB066,stroke:#FF7900,color:#000000
classDef TUIl-blue-bright   fill:#99BBD4,stroke:#003359,color:#000000
classDef TUIl-green-bright  fill:#7AC6CC,stroke:#00747A,color:#000000
classDef TUIl-grey-bright   fill:#D5D5D5,stroke:#A5A5A5,color:#000000
{{< /mermaid >}}

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

<!--
Mermaid Liste der Unter "/Data auf refodat mit Direkt-Links?"
Erläuterung der 3 File-Strukturen mit Mermaid
https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT10-11/FrequencyResponses.h5

https://refodat.de/servlets/MCRFileNodeServlet/refodat_derivate_00000050/Data/Runs/Bonn_MT10-11/LocationRx.h5

Eigen Unterverezichnisse? Back-Button?
-->

The format of the data is described in the respective entries in [Documentation](/docu/).
We provide the measurement data in sampled frequency domain in `FrequencyResponses.h5` and the associated antenna array calibration data as `ArrayTx.h5` (TX) and `ArrayRx.h5` (RX) respectively.

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

```bibtex
@dataset{som2025fyoris,
  doi = {10.71758/REFODAT.61},
  author =  {Sommerkorn, Gerd
  and Schneider, Christian
  and D{\"o}bereiner, Michael
  and Kotterman, Wim},
  title =  {Fyoris : Full-polarimetric V2I MIMO channel sounding data sets @2.53GHz in urban environment, together with pertinent antenna array characteristics},
  year =  {2025},
  keywords =  {channel sounding; MIMO; antenna arrays; propagation measurements},
  url =  {<https://refodat.de/receive/refodat_mods_00000061}>,
  language =  {en},
  copyright = {Creative Commons Attribution 4.0 International},
  publisher = {refodat - Repositorium f\"{u}r Forschungsdaten in Th\"{u}ringen},
}
```
