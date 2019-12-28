#!/bin/bash

sudo apt update
sudo apt upgrade -y

/bin/echo -e "\e[1;36m "
/bin/echo -e "\e[1;36m ======= END ======="

read -p "Press Enter to continue [OpenSSH] next."
/bin/echo -e "\e[1;36m echo "
/bin/echo -e "\e[1;36m echo ------- Start -------"
sudo apt install openssh-server -y
/bin/echo -e "\e[1;36m echo ======= END ======="

read -p "Press Enter to continue [NetTools, VIM, HTOP, NFS-Common] next."
/bin/echo -e "\e[1;36m echo "
/bin/echo -e "\e[1;36m echo ------- Start -------"
sudo apt install net-tools -y
sudo apt install vim -y
sudo apt install htop -y
sudo apt install nfs-common -y
hostname -I
/bin/echo -e "\e[1;36m echo ======= END ======="


read -p "Press Enter to continue [Create root account] next."
/bin/echo -e "\e[1;36m echo "
/bin/echo -e "\e[1;36m echo ------- Start -------"
sudo passwd root
sudo passwd -u root
/bin/echo -e "\e[1;36m echo ======= END ======="

read -p "Press Enter to add HS and TR to the hosts file"
echo '192.168.1.20    tr' | sudo tee -a /etc/hosts
echo '192.168.1.90    hs' | sudo tee -a /etc/hosts

read -p "Press Enter to creat /mnt/V and mount it"
/bin/echo -e "\e[1;36m echo ------- Start -------"
sudo mkdir -p /mnt/V
echo 'hs:/WL_Curated  /mnt/V   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
sudo mount -a
ls -la /mnt
/bin/echo -e "\e[1;36m echo "

/bin/echo -e "\e[1;36m echo ======= END ======="


