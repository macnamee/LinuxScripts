#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install build-essential git cmake libgmp3-dev --no-install-recommends -y
sudo apt install python3-dev python3-venv --no-install-recommends -y

git clone https://github.com/Chia-Network/chia-blockchain.git
cd chia-blockchain

sh install.sh

. .venv/bin/activate
