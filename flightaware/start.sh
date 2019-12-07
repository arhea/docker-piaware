#!/bin/bash -ex

/usr/bin/piaware-config mlat-results yes
/usr/bin/piaware-config receiver-type other
/usr/bin/piaware-config use-gpsd no

[[ ! -z ${PIAWARE_HOST} ]]       &&  /usr/bin/piaware-config receiver-host ${PIAWARE_HOST} || PIAWARE_HOST="dump1090"
[[ ! -z ${PIAWARE_PORT} ]]       &&  /usr/bin/piaware-config receiver-port ${PIAWARE_PORT} || PIAWARE_PORT="30005"
[[ ! -z ${PIAWARE_FEEDER_ID} ]]  && /usr/bin/piaware-config feeder-id ${PIAWARE_FEEDER_ID}

# Recommend adding this to the config
[[ ! -z ${GAIN} ]]             && /usr/bin/piaware-config rtlsdr-gain ${GAIN} || GAIN="-10"
[[ ! -z ${PPM} ]]              && /usr/bin/piaware-config rtlsdr-ppm ${PPM} || PPM="1"

/usr/bin/piaware -debug
