+++
date = '2025-11-21T11:20:03Z'
draft = false
title = 'State-Vector Estimation from Multi-Sensor Radar Data with Deep Learning Architectures'
categories = ["Student Topics"]
tags = ["Estimation", "Deep Learning", "Measurements"]
toc = false
+++

Deep Learning methods have shown that they can be efficiently used to estimate radar parameters on synthetic datasets that were used both for training and performance evaluation[^schieler2] [^tosi].
However, applying these methods to real measurement data remains challenging.
This is mostly due to the scarcity of labeled measurement data and the associated difficulty of obtaining sufficiently labeled datasets[^schieler1].

<!--more-->

We have collected a set of dynamic scenes involving two rotating metal spheres, where the state vector of the spheres is known for each snapshot, and the setup was measured for different bistatic radar angles.
Initial evaluations of propagation-parameter estimation performance, including comparisons of different estimation methods such as Maximum-Likelihood, RADAR, and Deep-Learning-based approaches, are already available[^dobereiner] [^mohr].
In addition to the measured ground truth, additional labels are therefore available from the different estimation methods.
Together, these measurements and evaluations constitute a realistic, controlled, and labeled dataset.

Building on this existing work, the task is now to estimate the state vector of the spheres—that is, their respective positions and velocities—using Deep Learning directly from the measurements.
The task is to develop Deep Learning architectures that can provide high-resolution estimates of the dynamic state vectors of the spheres and to investigate whether prior knowledge about the propagation scenario can be incorporated into the estimation.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Deep learning with Python: you know how to train deep neural networks in Python using Pytorch, Tensorflow, or Jax.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^dobereiner]: https://ieeexplore.ieee.org/document/8904605
[^mohr]: https://arxiv.org/abs/2510.16200
[^tosi]: https://arxiv.org/abs/2505.10969
[^schieler1]: https://arxiv.org/abs/2507.01799
[^schieler2]: https://arxiv.org/abs/2506.23621