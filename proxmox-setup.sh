#!/bin/bash


#PROXMOX



bash -c "$(wget -qLO - https://github.com/community-scripts/ProxmoxVE/raw/main/misc/post-pve-install.sh)"



apt update
apt install vim htop neofetch iperf3  duf hdparm bpytop mc -y



echo "alias ll='ls -lah'" | tee -a ~/.bashrc
echo "alias cls='clear'" | tee -a ~/.bashrc
#echo "neofetch" | tee -a ~/.bashrc

echo '"\e[A": history-search-backward' | tee -a .inputrc
echo '"\e[B": history-search-forward' | tee -a .inputrc
echo '"\e[C": forward-char' | tee -a .inputrc
echo '"\e[D": backward-char' | tee -a .inputrc






sudo apt update
sudo apt install htop neofetch iperf3 duf mc curl btop sudo -y
echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
echo "alias cls='clear'" | sudo tee -a ~/.bashrc

echo '"\e[A": history-search-backward' | sudo tee -a .inputrc
echo '"\e[B": history-search-forward' | sudo tee -a .inputrc
echo '"\e[C": forward-char' | sudo tee -a .inputrc
echo '"\e[D": backward-char' | sudo tee -a .inputrc


apt update
apt install sudo -y
