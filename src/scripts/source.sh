#!/bin/bash

##### Fetch source ###########
 if [ -d "/Source/xbmc" ]; then
rm -rf /root/build-area/xbmc
cd /Source/xbmc
echo "updating local source with latest git pull"
git pull
cp -pr /Source/xbmc /root/build-area/
else
echo "no local source found, cloning xbmc repo, this will take some time"
rm -rf /root/build-area/xbmc
cd /Source
git clone https://github.com/xbmc/xbmc.git
cp -pr /Source/xbmc /root/build-area/
fi

##############################

######## install any extra build dependencies ############



#####################################
