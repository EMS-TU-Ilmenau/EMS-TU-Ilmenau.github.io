+++
date = '2025-11-05'
draft = false
title = 'Higher Order B-Splines for Accurate and Efficient Interpolation'
categories = ["Student Topics"]
tags = ["b-splines"]
toc = false
+++

The department of electronics measurements and signal processing (EMS) conducts extensive radio measurement campaigns, which are the basis for future radio standards.
This measurement data boils down to gigabytes per second of raw data collected over hours of measurement campaigns[^measurement-campaigns].
Afterwards, we can compute the estimated radio channel parameters from those measurements.
A major bottleneck is the interpolation of the measured antenna characteristic[^ldm-eadf].

<!--more-->
The state of the art interpolation algorithm is computationally intensive, and low order B-Splines are not accurate enough.
Higher orders of B-Splines provide more accuracy, but will also increase the computational load[^munser-bspline].

This project will help in the understanding of B-Spline interpolation algorithms, leading up to a comparsion of accuracy and runtimes for different orders of b-splines.
The well established cubic interpolation can be formulated as a series of linear interpolations[^ruijter-bsplinegpu].
This enables the use of accelerator hardware, specifically the texture memory of graphics cards.
The student will implement an order five b-spline interpolation, and should try to find an equal performant reformulation.
Python, Numpy and cpp reference implementations with unittests are provided as well as realistic antenna measurements as example data.


#### References
[^measurement-campaigns]: https://ems-tu-ilmenau.github.io/categories/dataset/
[^ldm-eadf]: https://www.tu-ilmenau.de/fileadmin/Bereiche/EI/nt/pdfs/landmann_ECWT_2796.pdf
[^munser-bspline]: https://ieeexplore.ieee.org/document/799930
[^ruijter-bsplinegpu]: https://github.com/DannyRuijters/CubicInterpolationCUDA
