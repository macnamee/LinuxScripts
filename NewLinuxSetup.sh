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
    #sudo apt install glances -y
    sudo apt install ssmtp -y
    sudo apt install neofetch -y
    sudo apt install zim -y
    sudo apt install iperf3 -y
    sudo apt install hardinfo -y
    sudo apt install ranger -y
    sudo apt install duf -y
    sudo apt install mc -y
    sudo apt install curl -y
    sudo apt install bpytop -y
   
    #sudo add-apt-repository ppa:bashtop-monitor/bashtop && sudo apt update && sudo apt install bashtop -y
    echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
    echo "alias cls='clear'" | sudo tee -a ~/.bashrc
    echo "alias upup='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'" | sudo tee -a ~/.bashrc
    echo "alias install='sudo apt install'" | sudo tee -a ~/.bashrc    
    echo "neofetch" | sudo tee -a ~/.bashrc
    echo 'root:macnamee2@gmail.com:smtp.gmail.com:587' | sudo tee -a /etc/ssmtp/revaliases
    echo 'ryan:macnamee2@gmail.com:smtp.gmail.com:587' | sudo tee -a /etc/ssmtp/revaliases
    
    echo '"\e[A": history-search-backward' | sudo tee -a .inputrc
    echo '"\e[B": history-search-forward' | sudo tee -a .inputrc
    echo '"\e[C": forward-char' | sudo tee -a .inputrc
    echo '"\e[D": backward-char' | sudo tee -a .inputrc

    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not installing common tools."
fi



read -p "Install Gnome-Disk-Utility [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo apt install gnome-disk-utility -y
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not installing Gnome-Disk-Utility."
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

read -p "Mount Dev from HS on /Dev? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo mkdir -p /Dev
    echo 'hs:/Dev             /Dev          nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab    
    sudo mount -a
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not mounting Dev and from HS"
fi

read -p "Mount Temp from HS on /Temp? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo mkdir -p /Temp
    echo 'hs:/Temp             /Temp          nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    sudo mount -a
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not mounting Temp from HS"
fi


read -p "Setup Ranger and Copy Nerd Fonts? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    ##Ranger Setup
    ranger --copy-config=all
    git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
    echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
    sudo mkdir -p /usr/local/share/fonts/CaskaydiaCove
    sudo cp -r /Dev/Fonts/* /usr/local/share/fonts/CaskaydiaCove/
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not setting up Ranger and No fonts copied"
fi

neofetch
sed -i '/# info "Local IP" local_ip/ s/# //'  ~/.config/neofetch/config.conf
sed -i '/# info "Public IP" public_ip/ s/# //'  ~/.config/neofetch/config.conf




/bin/echo -e "\e[1;36m echo ======================================="
/bin/echo -e "\e[1;36m echo === Apps to use                     ==="
/bin/echo -e "\e[1;36m echo ======================================="

/bin/echo -e "\e[1;36m echo glances"
/bin/echo -e "\e[1;36m echo hardinfo -y"
/bin/echo -e "\e[1;36m echo ranger"

hostname -I
/bin/echo -e "\e[1;36m echo ======= DONE ======="
