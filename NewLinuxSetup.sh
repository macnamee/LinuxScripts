#!/bin/bash

sudo apt update
sudo apt upgrade -y

/bin/echo -e "\e[1;36m ""
/bin/echo -e "\e[1;36m "======= END ======="
read -p "Press Enter to continue [OpenSSH] next."


/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo "------- Start -------"
/bin/echo -e "\e[1;36m sudo apt install openssh-server -y
/bin/echo -e "\e[1;36m echo "======= END ======="
read -p "Press Enter to continue [NetTools, VIM, HTOP, NFS-Common] next."


/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo "------- Start -------"
sudo apt install net-tools -y
sudo apt install vim -y
sudo apt install htop -y
sudo apt install nfs-common -y
hostname -I
/bin/echo -e "\e[1;36m echo "======= END ======="
read -p "Press Enter to continue [Create root account] next."


/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo "------- Start -------"
sudo passwd root
sudo passwd -u root
/bin/echo -e "\e[1;36m echo "======= END ======="
read -p "Press Enter to continue [Create Mount Points] nexy."


/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo ""
/bin/echo -e "\e[1;36m echo "------- Start -------"
sudo mkdir -p /mnt/Install
sudo mkdir -p /mnt/W
sudo mkdir -p /mnt/Q
sudo mkdir -p /mnt/P
ls -la /mnt
/bin/echo -e "\e[1;36m echo "======= END ======="


