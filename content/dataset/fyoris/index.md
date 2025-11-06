+++
date = '2025-10-27T10:17:37+01:00'
draft = true
title = 'Fyoris'
categories = ["Dataset"]
tags = []
featured_image = "static/image.png"
+++

![](static/image.png)

Seven measurement runs, selected from a measurement campaign in Bonn, Germany, are provided.
The environment is urban, the context is V2I from an elevated base station, the set-up is fully polarimetric MIMO with two 16 dual-pol element stacked circular arrays, configured as two circular rings of 8 elements each.
The frequency is 2,53GHz, the bandwidth 20MHz.
For easy access of relevant quantities, data and meta data are stored in HDF5 format.
For aiding interpretation of the data, full Tx and Rx array characteristics are included.


Test

<!--more-->

```mermaid
%%{init: {"theme":"neutral","themeVariables":{"lineColor":"red"},"layout":"tidy-tree"}}%%
flowchart LR
classDef colorDataset stroke-width:1px, stroke-dasharray:none, stroke:#FF5978, fill:#FFDFE5, color:#8E2236
classDef colorGroup stroke-width:1px, stroke-dasharray:none, stroke:#999999, fill:#EEEEEE, color:#000000
root@{label: "/", shape: procs}
root:::colorGroup
FrequencyResponses@{label: "FrequencyResponses", shape: procs}
FrequencyResponses:::colorGroup
FrequencyResponses_Data["Data "]
FrequencyResponses_Data:::colorDataset
FrequencyResponses --> FrequencyResponses_Data
FrequencyResponses_MetaData@{label: "MetaData", shape: procs}
FrequencyResponses_MetaData:::colorGroup
FrequencyResponses_MetaData_Frequency@{label: "Frequency", shape: procs}
FrequencyResponses_MetaData_Frequency:::colorGroup
FrequencyResponses_MetaData_Frequency_Frequency["Frequency "]
FrequencyResponses_MetaData_Frequency_Frequency:::colorDataset
FrequencyResponses_MetaData_Frequency --> FrequencyResponses_MetaData_Frequency_Frequency
FrequencyResponses_MetaData_Frequency_Index["Index "]
FrequencyResponses_MetaData_Frequency_Index:::colorDataset
FrequencyResponses_MetaData_Frequency --> FrequencyResponses_MetaData_Frequency_Index
FrequencyResponses_MetaData --> FrequencyResponses_MetaData_Frequency
FrequencyResponses_MetaData_Rx@{label: "Rx", shape: procs}
FrequencyResponses_MetaData_Rx:::colorGroup
FrequencyResponses_MetaData_Rx_AntennaPortID["AntennaPortID "]
FrequencyResponses_MetaData_Rx_AntennaPortID:::colorDataset
FrequencyResponses_MetaData_Rx --> FrequencyResponses_MetaData_Rx_AntennaPortID
FrequencyResponses_MetaData_Rx_Index["Index "]
FrequencyResponses_MetaData_Rx_Index:::colorDataset
FrequencyResponses_MetaData_Rx --> FrequencyResponses_MetaData_Rx_Index
FrequencyResponses_MetaData --> FrequencyResponses_MetaData_Rx
FrequencyResponses_MetaData_Snapshot@{label: "Snapshot", shape: procs}
FrequencyResponses_MetaData_Snapshot:::colorGroup
FrequencyResponses_MetaData_Snapshot_Index["Index "]
FrequencyResponses_MetaData_Snapshot_Index:::colorDataset
FrequencyResponses_MetaData_Snapshot --> FrequencyResponses_MetaData_Snapshot_Index
FrequencyResponses_MetaData_Snapshot_TimeStamp["TimeStamp "]
FrequencyResponses_MetaData_Snapshot_TimeStamp:::colorDataset
FrequencyResponses_MetaData_Snapshot --> FrequencyResponses_MetaData_Snapshot_TimeStamp
FrequencyResponses_MetaData --> FrequencyResponses_MetaData_Snapshot
FrequencyResponses_MetaData_Tx@{label: "Tx", shape: procs}
FrequencyResponses_MetaData_Tx:::colorGroup
FrequencyResponses_MetaData_Tx_AntennaPortID["AntennaPortID "]
FrequencyResponses_MetaData_Tx_AntennaPortID:::colorDataset
FrequencyResponses_MetaData_Tx --> FrequencyResponses_MetaData_Tx_AntennaPortID
FrequencyResponses_MetaData_Tx_Index["Index "]
FrequencyResponses_MetaData_Tx_Index:::colorDataset
FrequencyResponses_MetaData_Tx --> FrequencyResponses_MetaData_Tx_Index
FrequencyResponses_MetaData --> FrequencyResponses_MetaData_Tx
FrequencyResponses --> FrequencyResponses_MetaData
root --> FrequencyResponses
SystemData@{label: "SystemData", shape: procs}
SystemData:::colorGroup
SystemData_RxGainPassive@{label: "RxGainPassive", shape: procs}
SystemData_RxGainPassive:::colorGroup
SystemData_RxGainPassive_Data["Data "]
SystemData_RxGainPassive_Data:::colorDataset
SystemData_RxGainPassive --> SystemData_RxGainPassive_Data
SystemData_RxGainPassive_MetaData@{label: "MetaData", shape: procs}
SystemData_RxGainPassive_MetaData:::colorGroup
SystemData_RxGainPassive_MetaData_Rx@{label: "Rx", shape: procs}
SystemData_RxGainPassive_MetaData_Rx:::colorGroup
SystemData_RxGainPassive_MetaData_Rx_AntennaPortID["AntennaPortID "]
SystemData_RxGainPassive_MetaData_Rx_AntennaPortID:::colorDataset
SystemData_RxGainPassive_MetaData_Rx --> SystemData_RxGainPassive_MetaData_Rx_AntennaPortID
SystemData_RxGainPassive_MetaData_Rx_Index["Index "]
SystemData_RxGainPassive_MetaData_Rx_Index:::colorDataset
SystemData_RxGainPassive_MetaData_Rx --> SystemData_RxGainPassive_MetaData_Rx_Index
SystemData_RxGainPassive_MetaData --> SystemData_RxGainPassive_MetaData_Rx
SystemData_RxGainPassive_MetaData_Snapshot@{label: "Snapshot", shape: procs}
SystemData_RxGainPassive_MetaData_Snapshot:::colorGroup
SystemData_RxGainPassive_MetaData_Snapshot_Index["Index "]
SystemData_RxGainPassive_MetaData_Snapshot_Index:::colorDataset
SystemData_RxGainPassive_MetaData_Snapshot --> SystemData_RxGainPassive_MetaData_Snapshot_Index
SystemData_RxGainPassive_MetaData_Snapshot_TimeStamp["TimeStamp "]
SystemData_RxGainPassive_MetaData_Snapshot_TimeStamp:::colorDataset
SystemData_RxGainPassive_MetaData_Snapshot --> SystemData_RxGainPassive_MetaData_Snapshot_TimeStamp
SystemData_RxGainPassive_MetaData --> SystemData_RxGainPassive_MetaData_Snapshot
SystemData_RxGainPassive_MetaData_Tx@{label: "Tx", shape: procs}
SystemData_RxGainPassive_MetaData_Tx:::colorGroup
SystemData_RxGainPassive_MetaData_Tx_AntennaPortID["AntennaPortID "]
SystemData_RxGainPassive_MetaData_Tx_AntennaPortID:::colorDataset
SystemData_RxGainPassive_MetaData_Tx --> SystemData_RxGainPassive_MetaData_Tx_AntennaPortID
SystemData_RxGainPassive_MetaData_Tx_Index["Index "]
SystemData_RxGainPassive_MetaData_Tx_Index:::colorDataset
SystemData_RxGainPassive_MetaData_Tx --> SystemData_RxGainPassive_MetaData_Tx_Index
SystemData_RxGainPassive_MetaData --> SystemData_RxGainPassive_MetaData_Tx
SystemData_RxGainPassive --> SystemData_RxGainPassive_MetaData
SystemData --> SystemData_RxGainPassive
root --> SystemData
```

<!--more-->

| Property             | Value        |
|----------------------|--------------|
| Foo                  | Bar          |

## Introduction

## Measurement

## Data Format

## Data Processing

## External References

- [REFODAT]()
- [doi](https://www.doi.org/doi)

## Citation

```
bibtex entry
```