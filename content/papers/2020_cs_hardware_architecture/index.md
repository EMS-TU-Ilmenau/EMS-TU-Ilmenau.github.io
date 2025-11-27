+++
date = '2025-11-25'
draft = false
title = 'Hardware Architecture for Ultra-Wideband Channel Impulse Response Measurements Using Compressed Sensing'
categories = ["Paper"]
tags = ["UWB", "PN-Sequences", "Compressed Sensing", "XG1", "XF1"]
featured_image = "static/image.png"
+++

**Wagner, Christoph W. and Semper, Sebastian and Römer, Florian and Schönfeld, Anna and Del Galdo, Giovanni.**

We propose a compact hardware architecture for measuring sparse channel impulse responses (IR) by extending the M-Sequence ultra-wideband (UWB) measurement principle with the concept of compressed sensing. A channel is excited with a periodic M-sequence and its response signal is observed using a Random Demodulator (RD), which observes pseudo-random linear combinations of the response signal at a rate significantly lower than the measurement bandwidth. The excitation signal and the RD mixing signal are generated from compactly implementable Linear Feedback Shift registers (LFSR) and operated from a common clock. A linear model is derived that allows retrieving an IR from a set of observations using Sparse-Signal-Recovery (SSR).

<!--more-->

A Matrix-free model implementation is possible due to the choice of synchronous LFSRs as signal generators, resulting in low computational complexity. For validation, real measurement data of a time-variant channel containing multipath components is processed by simulation models of our proposed architecture and the classic M-Sequence method. We show successful IR recovery using our architecture and SSR, outperforming the classic method significantly in terms of IR measurement rate. Compared to the classic method, the proposed architecture allows faster measurements of sparse time-varying channels, resulting in higher Doppler tolerance without increasing hardware or data stream complexity.

DOI: [10.23919/Eusipco47968.2020.9287454](https://www.doi.org/10.23919/Eusipco47968.2020.9287454)

### Related Work

- [Make Some Noise: Energy-Efficient 38 Gbit/s Wide-Range Fully-Configurable Linear Feedback Shift Register](https://www.researchgate.net/publication/355843971_Make_Some_Noise_Energy-Efficient_38_Gbits_Wide-Range_Fully-Configurable_Linear_Feedback_Shift_Register)
- [Every Clock Counts – 41 GHz Wide-Range Integer-N Clock Divider](https://www.researchgate.net/publication/355843966_Every_Clock_Counts_-_41_GHz_Wide-Range_Integer-N_Clock_Divider)
- [Shut Off! – Hybrid BICMOS Logic for Power-Efficient High Speed Circuits](https://doi.org/10.1109/SMACD58065.2023.10192217)