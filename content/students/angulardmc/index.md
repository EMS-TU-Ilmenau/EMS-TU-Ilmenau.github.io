+++
date = '2025-11-21T10:40:22+01:00'
draft = false
title = 'Angular Dense Multipath Components'
categories = ["Student Topics"]
tags = ["Estimation", "MIMO"]
toc = false
+++

It has been observed in [^unknown] and Chapter 2.5 of [^richter-diss] that in channel estimation and modelling a substantial proportion of the transmit energy is not resolveable by a superposition of specular paths, which mostly adhere to a ray of propagation model. These so called diffuse multipath components (DMC) which do not follow the specular ray model pose two challenges.

<!--more-->

First, one has to account for them during the estimation of the specular paths, otherwise these estimates become highly instable, physically unplausible and ultimately lead to badly conditioned estimates of the specular paths. By modelling the diffuse power by means of a stochastic process as proposed in [^unknown] [^richter-diss] [^angulardmc-kaeske], the channel observations can be suitably prewhitened, since they have influence on the covariance of the data.
Second, in order to remove the influence of the measurement system from the estimates of the channel parameters a suitable deembedding of the DMC has to be accounted for accordingly. Up to now, this remains an active area of research in any case.
For the time domain there already exist several approaches, mostly based on [^richter-diss] (Chapters 2.5 and 6.1). However, the spatial/angular domain is still actively studied. Our idea is to use the Effective Aperture Distribution Function (EADF) [^eadf-landmann] in order to interpolate the energy distribution of this random process in the spatial domain.
It is expected that this process' energy variation is very smooth in the angular domain, hence the EADF can be used with only a few aperture coefficients to approximate the non-specular components of the power angle profile. However, currently it is unclear how a good inital estimate can be achieved and how it can be further optimized. Usually one starts the estimation with some kind of projection step and then further refine it with some gradient iteration. Also, it is unclear how to appropriately evaluate estimation results of these angular dense components.

#### Prerequisites

- Signal processing: good knowledge of the Fourier transform and its discrete variants, spectral leakage, sampling theory, interpolation, random processes
- Some basic math: you should be familiar with partial derivatives of vector-valued functions, kernels of linear mappings and basics in optimization.
- Strong foundation in Numpy/Scipy: you should be familiar with broadcasting, `ndarray`s and `np.einsum`.
- Fluent english/german: our technical discussions might be more complicated than you expect

#### References

[^unknown]: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.872.6430&rep=rep1&type=pdf
[^richter-diss]: https://www.db-thueringen.de/receive/dbt_mods_00004815
[^angulardmc-kaeske]: https://www.researchgate.net/publication/281627349_Maximum-likelihood_based_estimation_of_angular_parameters_of_Dense-Multipath-Components
[^eadf-landmann]: https://www.tu-ilmenau.de/fileadmin/Bereiche/EI/nt/pdfs/landmann_ECWT_2796.pdf