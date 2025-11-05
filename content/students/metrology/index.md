+++
date = '2025-11-05'
draft = true
title = 'Quantifying the Performance of Multidimensional Channel Sounding and Parameter Estimation'
categories = ["Student Topics"]
tags = ["Metrology", "Estimation", "Sounding", "Thesis"]
+++

Measuring and characterizing the wireless propagation channel is of utmost importance for developing applications at most recent and unexplored frequency bands. However, since there are no off-the-shelf hardware solutions and 
no proven algorithms for new frequency bands, doing channel measurements itself is experimental, and the concepts of different research institutions and 
labs will widely differ. To still develop one common understanding of the wireless propagation channel, concepts for verifying and quantifying the accuracy of the channel sounding results are required[^ref1].

<!--more-->
One concept for sounder verification is to develop so-called over-the-air artifacts with easy-to-describe scattering properties such that well-controlled test channels can 
be created. This allows comparing the measurement and processing results against the expectations based on analytical descriptions of the artifact[^ref2].

Possible problems that could be explored are:

- Verification of full-polarimetric channel sounders: We want to use artifacts (e.g. edge/corner reflectors) with a known impact on the polarization of an electromagnetic waves to build test channels for full-polarimetric channel sounders. Additionally, we can use polarimetric decompositions to detect such canonical objects/shapes in more complex channel measurements allowing to build more precise channel models. 

- Dense scattering artifacts: Channel models typically make use of two modeling approaches; a deterministic approach describing highly resolvable and specular propagation paths, and a stochastic approach accounting for dense scattering in the environment that cannot be resolved into specular paths. Hence, we want to build a reverberation box (comparable to reverberation chambers in acoustics) and combine it with artifacts for specular paths allowing to test the trade-off between deterministic and stochastic model components.

Due to the experimental character, these topics are most suited for a bachelor or master thesis.


#### Prerequisites
- System identification: Good knowledge of LTI systems, their input/output relations, (circular) convolution and de-convolution via DFT.
- Electromagnetic wave propagation: You have a good understanding of basic propagation models, you know the concept of multipath components and wave polarization.
- You know how to work/behave in a lab: You can use basic lab devices such as signal generators and signal analyzers, you know how to use and connect RF components, you are familiar with calibration concepts and are interested in the automation of data acquisition pipelines.
- Programming: You have basic programming skills in Python/Numpy and can handle multidimensional arrays.
- Fluent english/german (also in technical discussions).

#### References

[^ref1]: [Metrology for THz Communications](https://link.springer.com/book/9783032019851)
[^ref2]: ([Details]({{< ref "/papers/2025_metrology_channel_sounding/index" >}}); [Paper](https://doi.org/10.1109/OJAP.2025.3566473))