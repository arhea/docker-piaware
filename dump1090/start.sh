#!/bin/bash -ex

echo "Running Dump 1090"
/usr/bin/dump1090-fa --net --lat $PIAWARE_LAT --lon $PIAWARE_LON

echo "Running Light HTTPD"
lighttpd -D -f etc/lighttpd/lighttpd.conf &
