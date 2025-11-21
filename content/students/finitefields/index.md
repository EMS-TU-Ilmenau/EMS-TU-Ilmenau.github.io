+++
date = '2025-11-20T13:16:22+01:00'
draft = false
title = 'The Theory of Finite Fields for Optimized Compressed Sensing Schemes'
categories = ["Student Topics"]
tags = ["UWB", "Radar", "Math", "Compressed Sensing"]
toc = false
+++

It has been shown[^csuwb] that Linear Feedback Shift Registers (LFSR) can serve as a Radar sensor by random demodulation that enables significantly lower data-rates than dictated by the Nyquist-Sampling Theorem.
At the same time they can be implemented very efficiently in silicon, while still allowing high configurability.
This makes this approach a prime candidate for a wide range of Radar and inspection applications, but it requires a thorough study of the resulting theoretically achieveable performance.

<!--more-->

As the available system uses the LFSR-generated Sequences both for stimulus as well as random demodulation, a correct und fundamental understanding of their properties is paramount.
For this purpose we wish to use the theory of finite fields \(GF(p^m)\)[^finitefields], as their properties map directly to the properties of the generated sequences.
In turn, the sequences' properties directly influence the radar system's performance and thus need to be tailored accordin to the system's desired operating point.

As such, this topic builds a bridge between Compressed Sensing[^cs] signal processing theory and the algebraic properties of finite fields.
Hence, the task is to empirically (by simulation), or theoretically study how properties of finite fields influence quantities relevant in Compressed Sensing, like coherence, the restricted isometry constant, or the nullspace property.
As we have a prototype implementation of this system assembled in our laboratories, theoretical findings can also be validated with suitable measurement setups.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with some basic algebra, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^csuwb]: https://doi.org/10.23919/eusipco47968.2020.9287454
[^cs]: https://ieeexplore.ieee.org/document/1614066
[^finitefields]: https://archive.org/details/finitefieldsforc0000mcel