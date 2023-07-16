bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/post-pve-install.sh)"

sudo apt install vim -y
sudo apt install htop -y
sudo apt install neofetch -y
sudo apt install iperf3 -y
sudo apt install duf -y
   
echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
echo "alias cls='clear'" | sudo tee -a ~/.bashrc
echo "neofetch" | sudo tee -a ~/.bashrc
    
echo '"\e[A": history-search-backward' | sudo tee -a .inputrc
echo '"\e[B": history-search-forward' | sudo tee -a .inputrc
echo '"\e[C": forward-char' | sudo tee -a .inputrc
echo '"\e[D": backward-char' | sudo tee -a .inputrc
