#!/bin/bash

/usr/bin/dump1090-fa --device-index 0 \
                      --interactive \
                      --gain -10 \
                      --ppm 0 \
                      --max-range 360 \
                      --net \
                      --net-heartbeat 60 \
                      --net-ro-size 1000 \
                      --net-ro-interval 1 \
                      --net-ri-port 0 \
                      --net-ro-port 30002 \
                      --net-sbs-port 30003 \
                      --net-bi-port 30004,30104 \
                      --net-bo-port 30005 \
                      --lat $PIAWARE_LAT \
                      --lon $PIAWARE_LON
