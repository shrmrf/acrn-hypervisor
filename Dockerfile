FROM ubuntu:16.04

MAINTAINER shrmrf "https://github.com/shrmrf"

# Install packages for building acrn
RUN apt-get update
RUN apt-get install -y  build-essential wget git

RUN apt-get clean

RUN git clone https://github.com/shrmrf/acrn-hypervisor /root/acrn-hypervisor
RUN cd /root/acrn-hypervisor; make clean && make all