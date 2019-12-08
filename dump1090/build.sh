#!/bin/bash -ex

# load the os version
source /etc/os-release
ARCH=$(uname -i)

# create our directory
mkdir -p /usr/src
cd /usr/src

# reset back to the src root
cd /usr/src

# clone the dump1090 repo
git clone https://github.com/flightaware/dump1090.git

# change into the repo
cd dump1090
# build the package
dpkg-buildpackage -b

if [ "$arch" == 'armv*' ]; then
  dpkg -i ../dump1090-fa_3.7.2_arm64.deb
else
  dpkg -i ../dump1090-fa_3.7.2_amd64.deb
fi
