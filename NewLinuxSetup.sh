#!/bin/bash

sudo apt update
sudo apt upgrade -y

echo ""
echo "======= END ======="
read -p "Press Enter to continue [OpenSSH] next."


echo ""
echo ""
echo "------- Start -------"
sudo apt install openssh-server -y
echo "======= END ======="
read -p "Press Enter to continue [NetTools, VIM, HTOP, NFS-Common] next."


echo ""
echo ""
echo "------- Start -------"
sudo apt install net-tools -y
sudo apt install vim -y
sudo apt install htop -y
sudo apt install nfs-common -y
echo "======= END ======="
read -p "Press Enter to continue [Create root account] next."


echo ""
echo ""
echo "------- Start -------"
sudo passwd root
sudo passwd -u root
echo "======= END ======="
read -p "Press Enter to continue [Create Mount Points] nexy."


echo ""
echo ""
echo "------- Start -------"
sudo mkdir -p /mnt/Install
sudo mkdir -p /mnt/W
sudo mkdir -p /mnt/Q
sudo mkdir -p /mnt/P
echo "======= END ======="














