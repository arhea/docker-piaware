#!/bin/bash -ex

# load the os version
source /etc/os-release
ARCH=$(uname -i)

# create our directory
mkdir -p /usr/src
cd /usr/src

# clone the repository
git clone https://github.com/flightaware/piaware_builder.git

# change into the repo
cd piaware_builder

# run the init script
./sensible-build.sh ${VERSION_CODENAME}

# change into the staging directory
cd ./package-${VERSION_CODENAME}

# build the package
dpkg-buildpackage -b

# configure the package
if [ "$arch" == 'armv*' ]; then
  dpkg -i ../piaware_3.7.2_arm64.deb
else
  dpkg -i ../piaware_3.7.2_amd64.deb
fi

