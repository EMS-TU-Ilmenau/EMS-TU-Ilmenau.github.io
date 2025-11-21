+++
date = '2025-11-21T10:55:22+01:00'
draft = false
title = 'Measurement Matrix Optimization for Compressed Parameter Estimation'
categories = ["Student Topics"]
tags = ["Compressed Sensing", "Estimation"]
toc = false
+++

When making use of the Compressed Sensing (CS) paradigm, one has to design the measurement process by means of a suitable compression step. Traditionally, the compression is modelled by means of a linear mapping acting on discretized version of the encountered signals, i.e. a usually complex-valued matrix [^comparrays] [^stochgrad] [^semper-diss]. Also, it has been an active field of research to apply CS as a data reduction scheme in radio channel sounding [^richter-diss].  Afterwards one is confronted with the problem to recover the parameters of interest, like time-of-flight, direction-of-arrival or Doppler-shifts from spectral-, spatial- and temporal measurements of a radio channel. In this context the iterative maximum-likelihood approach in [^richter-diss] presents an optimization approach that is both computationally feasible and reproduces closely what is dictated by the Cramer-Rao-Lower-Bound (CRLB).

<!--more-->

In order to quantify how suitable a measurement matrix is for a certain CS setup one usually attains to metrics like the D-RIP, RIP, NSP or the mutual-coherence. However, these metrics are only indirectly linked to the task of parameter estimation via maximum likelihood estimation. The CRLB however is strongly linked to this task and it might be beneficial to optimize the measurement matrix with respect to this metric.
To this end [^semper-diss] presents a fairly general stochastic gradient approach to optimize measurement matrices with respect to another differentiable metric but the methodology should be applicable to the CRLB as well. The main task of this project is to correctly calculate the matrix-valued Wirtinger derivative of the CRLB with respect to the measurement matrix and find a suitable optimization scheme that is numerically stable and efficient.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^richter-diss]: https://www.db-thueringen.de/receive/dbt_mods_00004815
[^comparrays]: https://ieeexplore.ieee.org/document/8385488
[^stochgrad]: https://ieeexplore.ieee.org/document/8683173
[^semper-diss]: https://www.db-thueringen.de/receive/dbt_mods_00051729