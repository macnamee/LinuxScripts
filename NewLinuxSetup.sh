#!/bin/bash

read -p "Do apt update && apt upgrade [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove -y
    sudo apt install vim -y    
else
    echo "Not doing upgrade this time. Installing VIM!!"
    sudo apt update
    sudo apt install vim -y    
fi
/bin/echo -e "\e[1;36m "
/bin/echo -e "\e[1;36m ======= END ======="


read -p "Install OpenSSH Sever [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo apt install openssh-server -y
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not installing OpenSSH Server."
fi


read -p "Add       ryan   ALL=(ALL) NOPASSWD:ALL       to visudo [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo visudo
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not updating visudo."
fi

read -p "Install common tools: NetTools, VIM, HTOP and NFS-Common [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo apt install net-tools -y
    sudo apt install htop -y
    sudo apt install nfs-common -y
    sudo apt install tilix -y
    sudo apt install neofetch -y
    sudo apt install iperf3 -y
    sudo apt install duf -y
    sudo apt install mc -y
    sudo apt install curl -y
    sudo apt install btop -y
   
    #sudo add-apt-repository ppa:bashtop-monitor/bashtop && sudo apt update && sudo apt install bashtop -y
    cd ~
    echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
    echo "alias cls='clear'" | sudo tee -a ~/.bashrc
    echo "neofetch" | sudo tee -a ~/.bashrc
    
    echo '"\e[A": history-search-backward' | sudo tee -a .inputrc
    echo '"\e[B": history-search-forward' | sudo tee -a .inputrc
    echo '"\e[C": forward-char' | sudo tee -a .inputrc
    echo '"\e[D": backward-char' | sudo tee -a .inputrc

    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not installing common tools."
fi


read -p "Enable and set a password for root? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo passwd root
    sudo passwd -u root
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not setting up a root account."
fi

read -p "Add HS to /etc/hosts? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    echo '192.168.1.90    hs' | sudo tee -a /etc/hosts
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not updating /etc/hosts."
fi

read -p "Create shell script to mount Temp from HS on /mnt/temp? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    echo '#!/bin/bash' | tee -a ~/mount-temp.s.sh
    echo 'sudo mkdir -p /mnt/temp' | tee -a ~/mount-temp.s.sh
    echo 'mount -t nfs -o noatime,nolock,intr,tcp,actimeo=1 hs:/Volume1/Temp /mnt/temp' | tee -a ~/mount-temp.s.sh
    chmod +x ~/mount-temp.s.sh
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not mounting Temp from HS"
fi

neofetch
sed -i '/# info "Local IP" local_ip/ s/# //'  ~/.config/neofetch/config.conf
sed -i '/# info "Public IP" public_ip/ s/# //'  ~/.config/neofetch/config.conf

hostname -I
/bin/echo -e "\e[1;36m echo ======= DONE ======="
