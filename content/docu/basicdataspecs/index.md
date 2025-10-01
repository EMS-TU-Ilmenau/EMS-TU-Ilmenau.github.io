+++
date = '2025-05-21T16:38:55+02:00'
draft = false
title = 'Abstract Specification'
categories = ["Docu"]
+++

The hierarchical data format version 5 (HDF5) is a powerful dataformat to organize and store large amounts of data.
Additionally, it provides features to label and describe the data with dedicated information.

This document describes the general structure elements of the data format.
Furthermore, it contains some self-made definitions, which are not required by the file format, but improve the handling and understanding of the stored data.

<!--more-->

### File
A HDF5 file has a hierarchical structure comparable to a regular file explorer.
It consists of named groups (see directories / folders) and datasets (see files).
It's also possible to set up links within a file or to other HDF5 files.

### Group
A group is comparable to a directory / folder.
It can contain multiple other groups and / or datasets.
Additionally, multiple attributes with additional information can be attached to the group.

*Definition*: Each group has a **Description** attribute containing a textual description of its contents.

### Datasets
Datasets are comparable to regular files in a file explorer.
These datasets contain the actual data as multidimensional arrays. \
Each dimension of a dataset can have a label, i.e. name of the dimension. \
A further description for the dimension can be achieved by the so called *Dimension Scales*.
These dimension scales are other datasets attached to the main dataset and can be interpreted as axes ticks. \
As an example, take a dataset containing a timeseries of values.
The attached dimension scale can provide the corresponding time stamps.

*Defintion*:
* Each dimension of a dataset has to have a label.
* Each dimension of a dataset has to have at least one attached dimension scale.
* The dimension scales are 1D arrays with the exact same length as the corresponding dimension.

Identical to a group, datasets can have attached attributes, too.

*Definition*: Each dataset must have the following attributes:

* **Description**: containing a textual description of its contents
* **BaseUnit**: unit of the data (e.g. Hz, ns, ...; if no unit the value is a emtpy string)
* **UnitScaler**: factor to convert the values to standard SI-units
(e.g. timestamps given in ns have UnitScaler = 1e-9)

### File structure
The hierarchical structure allows free organization of the groups and datasets.
To make the handling of different datasets more intuitiv we define some general rules for the organization of datasets and their corresponding dimension scales, i.e. meta data.

*Definition*:

* Each group containing at least one dataset must have a subgroup *MetaData* (exception are groups containing dimension scales)
* This *MetaData* group has further subgroups named with the labels of the dimensions of the dataset.
* These subgroups corresponding to the different dimensions, contain the dimension scales for the dimensions, respectively.
* The previous rules enforce that all datasets within one group share the same meta data and hence, must have the same shape.