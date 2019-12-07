FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive
ENV PIAWARE_VERSION=3.7.2

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y wget \
    && wget "http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_${PIAWARE_VERSION}_all.deb" \
    && dpkg -i "piaware-repository_${PIAWARE_VERSION}_all.deb"
