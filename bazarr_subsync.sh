#!/usr/bin/with-contenv bash

apt update
apt install -y git swig python3-pip libsphinxbase-dev libpocketsphinx-dev libavutil-dev libswscale-dev libavformat-dev libavdevice-dev
mkdir build
cd build
git clone -b '0.15' https://github.com/sc0ty/subsync.git
cd subsync
pip3 install .
