+++
date = '2025-11-05T13:16:22+01:00'
draft = false
title = 'Realtime Parameter Estimation for Wifi-based Sensing Applications'
categories = ["Student Topics"]
tags = ["Wifi", "MIMO", "Estimation"]
toc = false
+++

The ESPARGOS development board[^espargos] allows easy access to IQ data obtained from Wifi communications. 
As such, it efficiently sniffes an environment while providing realtime access to pilot symbols and respective channel state information.
This allows to use of parameter estimation techniques based on maximum likelihood like[^richter-diss].

<!--more-->

However, these usually iterative approaches are not directly suitable for execution under realtime constraints and need to be adapted and trimmed down, to suit these tighter runtime conditions.
During this project, a first draft on how such an algorithm pipeline that is integrated with[^espargos] should be conceptualized, developed and verified.

To this end, one can tackle the following problems:

 - We need to familiarize ourselves with the hardware platform, build a suitable software interface and implement a simple reference algorithm, like CFAR, MUSIC, ESPRIT or variants thereof.
 - We can extend the simple algorithms to more complex, iterative schemes that still satisfy the runtime constraints for realtime execution
 - For verification purposes, we design a scenario in a simple and controlled environment that allows to verify the pipelines's performance in terms of accuracy based on measurement data.
 - We conduct a theoretical analysis of the achieveable estimation accuracy.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^espargos]: https://espargos.net
[^richter-diss]: https://www.db-thueringen.de/receive/dbt_mods_00004815