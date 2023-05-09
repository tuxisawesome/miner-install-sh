#!/bin/bash
sudo apt update
sudo apt dist-upgrade -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make



./xmrig -o gulf.moneroocean.stream:10128 -u 47XAuT8FBGMiUoCMXp9DjKi49uV1GyZuL92TRRAv9iCEj4UBdAKJAGMdugBzBgbsuDConHPdabytx1MKyKscr7SQJLEwbfU -p mine-$RANDOM
