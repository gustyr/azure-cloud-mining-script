#!/usr/bin/env bash


cd ..
rm -rf xmrig/
git clone https://github.com/xmrig/xmrig.git
cd xmrig
#git checkout v5.5.3    Non serve
rm src/donate.h
curl https://raw.githubusercontent.com/gustyr/azure-cloud-mining-script/master/azure_script/donate.h --output src/donate.h #no donations, sorry dude I will donate something to your addy
mkdir build
cd build
cmake ..
make 
cd ..
cd ..
