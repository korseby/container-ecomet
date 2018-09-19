# Code for the computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes using the MTBLS520 dataset
This repository includes code to run the Galaxy workflow, which processes the MTBLS520 dataset, and to build the Docker container including required libraries, R packages, scripts and Galaxy tool wrappers for the publication [1] in Nature Scientific Data.

[![DOI](https://zenodo.org/badge/107677250.svg)](https://zenodo.org/badge/latestdoi/107677250)

## Short Description
This repository includes code for a Galaxy workflow to process the MTBLS520 dataset [3], which was generated from 108 samples of 9 bryophyte species obtained in four seasons using an untargeted liquid chromatography coupled with mass spectrometry (LC/MS) acquisition method.

## Version
Version: 1.1

## Description
In the research field of Eco-Metabolomics, non-model organisms are typically studied in their natural environment and relations are made between biochemistry and ecological function. Current challenges when processing such data involve, among others, complex ecological experiment designs, peak detection parameter settings and high variation of metabolite profiles of different species. Here, we present code for a Galaxy workflow to process a dataset generated from 108 samples of 9 bryophyte species obtained in four seasons using an untargeted liquid chromatography coupled with mass spectrometry (LC/MS) acquisition method. With this computational workflow, we address the challenges in data processing and present a reproducible and reusable method implemented in Galaxy focusing on data import, standard formats, technical validation, peak detection and multivariate statistics. We expect the presented workflow will encourage researchers to conduct subsequent Eco-Metabolomics studies.

## Workflow
Following is an overview of the Galaxy workflow for the MTBLS520 dataset.

![mtbls520_workflow](galaxy/mtbls520_workflow.jpg)

The workflow should be started with the following parameter settings:

![mtbls520_workflow_settings](galaxy/mtbls520_workflow_settings.jpg)

## Key features
- Processing LC/MS data
- Processing ecological data
- Multivariate statistics
- Multifactorial variables

## Approaches
- Ecometabolomics
- Metabolomics / Untargeted
- Ecology
- Multivariate statistics
- Chemotaxonomy

## Instrument Data Types
- MS / LC-MS

## Publications and websites
[1] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes. Nature Scientific Data 5: 180179. https://doi.org/10.1038/sdata.2018.179

[2] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Seasonal variation of secondary metabolites in nine different bryophytes. Ecology and Evolution 00: 1-13. https://doi.org/10.1002/ece3.4361

[3] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Seasonal variation of secondary metabolites in 9 different moss and liverwort species. MetaboLights 520. https://www.ebi.ac.uk/metabolights/MTBLS520

[4] Peters, K., Gorzolka, K., Bruelheide, H. & Neumann, S. (2018): Container for the Galaxy workflow to process the MTBLS520 dataset. DockerHub. https://hub.docker.com/r/korseby/mtbls520/

[5] Peters, K., Gorzolka, K., Bruelheide, H., & Neumann, S. (2018). Code for the computational workflow to study the seasonal variation of secondary metabolites in nine different bryophytes using the MTBLS520 dataset (Version v1.1). Zenodo. http://doi.org/10.5281/zenodo.1284246 

