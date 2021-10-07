FROM ubuntu:20.04

LABEL mantainer="Francisco RA <francisco@ltech.io>"

USER root

RUN apt-get -y update \
    && apt-get install -y wget curl libcurl3-gnutls

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get -y update \
    && apt-get install -y blobfuse

RUN mkdir -p /mnt/blobfusetmp
RUN chown root /mnt/blobfusetmp

RUN mkdir /tmp/blobfusecfg
COPY fuse_connection.cfg /tmp/blobfusecfg

RUN mkdir /mnt/adls
