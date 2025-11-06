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
  root(["/"]):::colorGroup
  FrequencyResponses(["FrequencyResponses"]):::colorGroup
  FrequencyResponses_Data["Data"]:::colorDataset
  FrequencyResponses --> FrequencyResponses_Data
  root --> FrequencyResponses

  classDef colorDataset stroke-width:1px,stroke:#FF5978,fill:#FFDFE5,color:#8E2236;
  classDef colorGroup stroke-width:1px,stroke:#999,fill:#EEE,color:#000;
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