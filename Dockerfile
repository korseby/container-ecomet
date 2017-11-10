FROM ubuntu:16.04

MAINTAINER Kristian Peters ( kpeters@ipb-halle.de )

ENV R_VERSION="3.4.2-2xenial2"

# docker build -t korseby/mtbls520 .

# Add cran R backport
RUN echo "deb http://cloud.r-project.org/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# Install R + packages
RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install apt-transport-https r-base-dev=${R_VERSION} && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install make gcc gfortran g++ libnetcdf-dev libxml2-dev libblas-dev liblapack-dev libssl-dev pkg-config git xorg xorg-dev libglu1-mesa-dev libgl1-mesa-dev wget zip unzip && \
    R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("xcms")' && \
    R -e 'install.packages(c("irlba","igraph","XML","intervals"), repos="https://mirrors.ebi.ac.uk/CRAN/")' && \
    R -e 'install.packages("devtools", repos="https://mirrors.ebi.ac.uk/CRAN/")' && \
    R -e 'library(devtools); install_github(repo="sneumann/CAMERA", ref="cbc9cdb2eba6438434c27fec5fa13c9e6fdda785")' && \
    R -e 'source("https://bioconductor.org/biocLite.R"); biocLite("multtest")' && \
    R -e 'install.packages(c("RColorBrewer","Hmisc","gplots","multcomp","rgl","mixOmics","vegan","ape","pvclust","dendextend","cba","nlme"), repos="https://mirrors.ebi.ac.uk/CRAN/")' && \
    apt-get -y --purge --auto-remove remove make gcc gfortran g++ libblas-dev liblapack-dev r-base-dev libssl-dev pkg-config git xorg-dev libglu1-mesa-dev libgl1-mesa-dev && \
    apt-get -y clean && apt-get -y autoremove && rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/*

# Add scripts to container
ADD scripts/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*


