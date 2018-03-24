FROM clearlinux:base

MAINTAINER shrmrf "https://github.com/shrmrf"

# Install packages for building acrn
# RUN swupd update
RUN swupd bundle-add  os-core-dev

RUN apt-get clean

RUN git clone https://github.com/shrmrf/acrn-hypervisor /root/acrn-hypervisor
RUN cd /root/acrn-hypervisor; make clean && make all
