+++
date = '2025-11-21T12:33:22+01:00'
draft = false
title = 'High-Performance Vectorized Cubic B-Spline Interpolation Algorithms'
categories = ["Student Topics"]
tags = ["b-splines"]
toc = false
+++

The department of electronics measurements and signal processing (EMS) conducts extensive radio measurement campaigns, which are the basis for future radio standards.
This measurement data boils down to gigabytes per second of raw data collected over hours of measurement campaigns [^datasets].
Afterwards, we can compute the estimated radio channel parameters from those measurements.
A major bottleneck is the interpolation of the measured antenna characteristic [^eadf-landmann].
Hence, we wish to improve compute throughput by using vectorized computation.
This research project will give insights to how our existing algorithms could be vectorized on the tu ilmenau cpu hpc cluster.

<!--more-->

The student will implement different strategies for obtaining single instruction multiple data (SIMD) implementations of a linear and cubic B-Spline interpolation algorithm [^splines].
The implementation strategies will be: a SIMD abstraction library of your choice, automatic compiler optimizations (hints, pragmas, flags) and (optional) explicit SIMD intrinsics (__mm256_*).
Python, Numpy and cpp reference implementations with unittests will be provided.
The student report compares the different approaches in terms of productivity, portability and performance tradeoffs.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^datasets]: https://ems-tu-ilmenau.github.io/categories/dataset/
[^eadf-landmann]: https://www.tu-ilmenau.de/fileadmin/Bereiche/EI/nt/pdfs/landmann_ECWT_2796.pdf
[^splines]: https://ieeexplore.ieee.org/document/799930
