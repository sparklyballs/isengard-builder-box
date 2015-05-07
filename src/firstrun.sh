#!/bin/bash

cd /Build-Scripts
files=(*.sh)

if [ -e "${files[0]}" ];
then
    echo "build files present, will attempt to compile"
chmod +x /Build-Scripts/*.sh
sleep 1s
./source.sh
./build.sh
./mkfpm.sh
/root/debout.sh
else
echo "no build files in script area, copying default, not compiling, restart container"
cp /root/scripts/*.sh /Build-Scripts/
chmod +x /Build-Scripts/*.sh
fi

exec echo "blah blah blah"
