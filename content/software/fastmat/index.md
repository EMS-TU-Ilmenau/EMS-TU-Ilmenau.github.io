+++
date = '2022-06-18T09:20:41+02:00'
draft = false
title = 'Fastmat : Efficient linear transforms in Python'
categories = ["Software"]
tags = []
featured_image = "static/image.png"
+++

Authors: *Christoph Wagner, Sebastian Semper*

Scientific computing requires handling large linear models, which are often composed of structured matrices. With increasing model size, dense representations quickly become infeasible to compute or store. Matrix-free implementations are suited to mitigate this problem at the expense of additional implementation overhead, which complicates research and development effort by months, when applied to practical research problems. Fastmat is a framework for handling large structured matrices by offering an easy-to-use abstraction model. 

<!--more-->

It allows for the expression of matrix-free linear operators in a mathematically intuitive way, while retaining their benefits in computation performance and memory efficiency. A built-in hierarchical unit-test system boosts debugging productivity and run-time execution path optimization improves the performance of highly-structured operators. The architecture is completed with an interface for abstractly describing algorithms that apply such matrix-free linear operators, while maintaining clear separation of their respective implementation levels. Fastmat achieves establishing a close relationship between implementation code and the actual mathematical notation of a given problem, promoting readable, portable and re-usable scientific code.

## External References

- [documentation](https://fastmat.readthedocs.io/) 
- [code](https://github.com/EMS-TU-Ilmenau/fastmat)
- [10.1016/j.softx.2022.101013](https://www.doi.org/10.1016/j.softx.2022.101013)

## Citation

```
@article{fastmat2022,
    doi = {10.1016/j.softx.2022.101013},
    url = {https://doi.org/10.1016%2Fj.softx.2022.101013},
    year = {2022},
    month = {jun},
    publisher = {Elsevier {BV}},
    volume = {18},
    pages = {101013},
    author = {Christoph W. Wagner and Sebastian Semper and Jan Kirchhof},
    title = {fastmat: Efficient linear transforms in Python},
    journal = {{SoftwareX}}
} 
```