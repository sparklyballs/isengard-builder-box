#!/bin/bash

cd /root/build-area/xbmc
git checkout master
./bootstrap
./configure
make
make DESTDIR=/root/project install
