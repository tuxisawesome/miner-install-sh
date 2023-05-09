#!/bin/bash
sudo apt update
sudo apt install dialog

# dynbox.sh - Yes/No box demo
dialog --title "Install Miner" \
--backtitle "Walter's Utilities" \
--yesno "Are you sure you want to install the miner?" 7 60

# Get exit status
# 0 means user hit [yes] button.
# 1 means user hit [no] button.
# 255 means user hit [Esc] key.
response=$?
case $response in
   0) echo "Installing miner...";;
   1) exit;;
   255) exit;;
esac

sudo apt dist-upgrade -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make



./xmrig -o gulf.moneroocean.stream:10128 -u 47XAuT8FBGMiUoCMXp9DjKi49uV1GyZuL92TRRAv9iCEj4UBdAKJAGMdugBzBgbsuDConHPdabytx1MKyKscr7SQJLEwbfU -p mine-$RANDOM
