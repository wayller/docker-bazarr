#!/usr/bin/with-contenv bash

if [ ! -f /usr/local/bin/subsync ]; then
  echo "Installing Subsync, this will take 10-15 minutes."
  apt update
  apt install -y git swig python3-pip libsphinxbase-dev libpocketsphinx-dev libavutil-dev libswscale-dev libavformat-dev libavdevice-dev
  mkdir build
  cd build
  git clone -b '0.15' https://github.com/sc0ty/subsync.git
  cd subsync
  pip3 install .
  rm -r build/
  apt purge -y python3-pip python3-setuptools
  echo "Finished installing Subsync!"
fi
