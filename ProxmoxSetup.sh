bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/tools/pve/post-pve-install.sh)"


sudo apt update
apt install vim -y
apt install htop -y
apt install iperf3 -y
apt install duf -y
apt install btop -y
apt install mc -y
apt install git -y

   
echo "alias ll='ls -lah'" | tee -a ~/.bashrc
echo "alias cls='clear'" | tee -a ~/.bashrc
    
echo '"\e[A": history-search-backward' | tee -a .inputrc
echo '"\e[B": history-search-forward' | tee -a .inputrc
echo '"\e[C": forward-char' | tee -a .inputrc
echo '"\e[D": backward-char' | tee -a .inputrc
source ~/.bashrc



#### FOR NON ROOT

sudo apt update
sudo apt install vim -y
sudo apt install htop -y
sudo apt install iperf3 -y
sudo apt install duf -y
sudo apt install btop -y
sudo apt install mc -y
sudo apt install git -y

   
echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
echo "alias cls='clear'" | sudo tee -a ~/.bashrc
    
echo '"\e[A": history-search-backward' | sudo tee -a .inputrc
echo '"\e[B": history-search-forward' | sudo tee -a .inputrc
echo '"\e[C": forward-char' | sudo tee -a .inputrc
echo '"\e[D": backward-char' | sudo tee -a .inputrc
source ~/.bashrc
