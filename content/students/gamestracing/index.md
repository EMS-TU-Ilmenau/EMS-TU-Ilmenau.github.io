+++
date = '2025-11-20T13:16:22+01:00'
draft = false
title = 'Using Computer Game Technology for Electromagnetic Ray Tracing'
categories = ["Student Topics"]
tags = ["Ray Tracing"]
toc = false
+++

Electromagnetic Raytracing[^sionna] has become much more relevant for future digital twin modelling, as it now supports differentiation of the raytracing output. Not only does this allow smooth interpolation of the raytracing result, for instance in space and time, but also the integration of raytracing into learning architectures, which in turn solve inverse problems. This term is coined physics based deep learning[^pbdl].

<!--more-->

One inverse problem that one could imagine addressing is to infer properties that are observed by a raytracer and whose output is compared with real world measurements of this object.
In order to obtain a fitting description of the raytraced/measured object, a parametric model with a certain amount of degrees of freedom is necessary.
This is for instance necessary, to characterize an objects electro-magnetic reflectivity[^rcs] properties, as a purely measurement-based approach, since the necessary measurement effort is not practical.
Hence, a hybrid approach of a simulation that is parametrized by suitable measurements is a promising alternative.

However, currently the existing raytracing implementations do not allow for a rich variety of object parametrizations. Hence, the goal of this work is to extend electromagnetic raytracers with capabilities that are already readily found in old computer games, but help to improve the expressability and flexibility of object modelling. These may include:
 - texture mapping including mipmapping
 - different texture channels: reflectivity, roughness, local curvature, anisotropy
 - geometric levels of detail, e.g. tesselation shaders

The work should develop and implement concepts on how to integrate these features into raytracers like [^sionna] and also evaluate what impact their implementation might have on execution time and possibly the necessary measurement effort to determine them.

#### Prerequisites

- Experience and interest in game development techniques.
- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes.
- Some basic math: you should be familiar with some basic algebra, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^rcs]: https://ieeexplore.ieee.org/document/10644867
[^pbdl]: https://www.physicsbaseddeeplearning.org/intro.html
[^sionna]: https://nvlabs.github.io/sionna/index.html