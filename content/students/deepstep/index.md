+++
date = '2025-11-21T11:42:25+01:00'
draft = false
title = 'Deep Learning Based Stepsize Estimation'
categories = ["Student Topics"]
tags = ["Estimation", "Deep Learning"]
toc = false
+++

For first and second-order optimization methods, one usually is in need of two things. 
A step direction and a suitable stepsize to allow rapid convergence. 
Usually one employs a condition in the form of [^wolfe-cond] or uses a so-called Trust-region[^trust-region] to limit the stepsize during the iteration.
If we look at it from another standpoint, we can consider for example a set of various different step directions and we want to find a suitable weighting of those in order to minimize the cost-function as rapidly as possible. Finding these weighting factors is the job of a step direction selection method.

<!--more-->

To this end, we want to employ a recurrent neural network which has as input the candidate step directions [^momentum] [^wiki-newtonalg] [^wiki-graddesc] and then finds suitable weightings of these directions. 
Then these weightings are used to calculate the next iteration in the actual gradient iteration and at this location the new step directions are calculated and fed into the neural net together with the weights of the last step. 
This way we exploit the recurrent structure of the net. Similar approaches have been taken in [^alg-unrolling] but these methods cannot be applied in our case.

This method can be trained by randomly generating ground truths which are then altered slightly and based on the cost-function the optimizer is required to minimize. 
We train the recurrent structure to minimize this cost function in a fixed number of gradient steps. 
This can happen either unsupervised, by just evaluating the loss, or by calculating the difference to the true loss function known from the randomly generated parameters.

The resulting deep learning based gradient algorithm should then be used in a parameter estimation framework for channel estimation. [^richter-diss]

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Deep learning with Python: you know how to train deep neural networks in Python using Pytorch, Tensorflow, or Jax.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^wolfe-cond]: https://en.wikipedia.org/wiki/Wolfe_conditions
[^trust-region]: http://www.applied-mathematics.net/optimization/optimizationIntro.html
[^momentum]: https://distill.pub/2017/momentum/
[^wiki-newtonalg]: https://en.wikipedia.org/wiki/Gauss%E2%80%93Newton_algorithm
[^wiki-graddesc]: https://en.wikipedia.org/wiki/Gradient_descent
[^alg-unrolling]: https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9363511
[^richter-diss]: https://www.db-thueringen.de/receive/dbt_mods_00004815