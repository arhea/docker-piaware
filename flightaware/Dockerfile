FROM debian:stretch as builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y \
      build-essential \
      wget \
      git \
      debhelper \
      tcl8.6-dev \
      autoconf \
      python3-dev \
      python3-venv \
      dh-systemd \
      libz-dev \
      pkg-config \
      libncurses5-dev \
      libbladerf-dev \
      libboost-system-dev \
      libboost-program-options-dev \
      libboost-regex-dev \
      libboost-filesystem-dev \
      net-tools \
      tclx8.4 \
      tcl-tls \
      itcl3 \
      tcllib \
      librtlsdr-dev \
      libusb-1.0-0-dev \
      lighttpd \
      libfam0
