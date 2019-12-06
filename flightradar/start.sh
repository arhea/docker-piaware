#!/bin/bash

/usr/bin/fr24feed --receiver=beast-tcp --logmode=1 --host=$DUMP1090_HOST:$DUMP1090_PORT --logpath=/var/log --mlat=yes mlat-without-gps=yes --bs=no --raw=yes
