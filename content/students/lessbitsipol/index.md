+++
date = '2025-11-05'
draft = false
title = 'Influence of Low Precision Datatypes on Interpolation Algorithms'
categories = ["Student Topics"]
tags = ["b-splines"]
toc = false
+++
At EMS we conduct extensive radio measurement campaigns, which are the basis for future radio standards.
This measurement data boils down to gigabytes per second of raw data collected over hours of measurement campaigns[^measurement-campaigns].
Afterwards, we can compute the estimated radio channel parameters from those measurements.
A major bottleneck is the interpolation of the measured antenna characteristic[^ldm-eadf].

<!--more-->
scientific computing typically uses double precision, but most modern compute hardware is optimized for `f32`.
There is a trend to use even less (`bf16`)[^bf16], requiring lower memory bandwidth and allowing for faster compute, at the cost of precision.

This project will help discover the influence of low precision datatypes in interpolation algorithms relating to accuracy and runtime complexity.
The student therefore implements a templated linear and cubic  B-Spline interpolation[^munser-bspline].
The report includes memory and time complexity comparisons of different precisions, and a discussion about the resulting interpolation accuracy.
Python, Numpy and cpp reference implementations with unittests are provided as well as realistic antenna measurements as example data.



#### References
[^measurement-campaigns]: https://ems-tu-ilmenau.github.io/categories/dataset/
[^ldm-eadf]: https://www.tu-ilmenau.de/fileadmin/Bereiche/EI/nt/pdfs/landmann_ECWT_2796.pdf
[^bf16]: https://en.wikipedia.org/wiki/Bfloat16_floating-point_format
[^munser-bspline]: https://ieeexplore.ieee.org/document/799930
