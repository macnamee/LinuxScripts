#!/bin/bash

read -p "Do apt update && apt upgrade [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    sudo apt update
    sudo apt upgrade -y
else
    echo "Not doing update && upgrade this time."
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

read -p "Install common tools: NetTools, VIM, HTOP and NFS-Common [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo apt install net-tools -y
    sudo apt install vim -y
    sudo apt install htop -y
    sudo apt install nfs-common -y
    sudo apt install tilix -y
    #sudo apt install glances -y
    sudo apt install ssmtp -y
    sudo apt install neofetch -y
    sudo apt install gnome-disk-utility -y
    sudo apt install iperf3 -y
    sudo apt install hardinfo -y

    #sudo add-apt-repository ppa:bashtop-monitor/bashtop && sudo apt update && sudo apt install bashtop -y
    echo "alias ll='ls -lah'" | sudo tee -a ~/.bashrc
    echo "alias cls='clear'" | sudo tee -a ~/.bashrc
    echo "neofetch" | sudo tee -a ~/.bashrc
    echo 'root:macnamee2@gmail.com:smtp.gmail.com:587' | sudo tee -a /etc/ssmtp/revaliases
    echo 'ryan:macnamee2@gmail.com:smtp.gmail.com:587' | sudo tee -a /etc/ssmtp/revaliases
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

read -p "Add HS and TS to /etc/hosts? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    echo '192.168.1.20    tr' | sudo tee -a /etc/hosts
    echo '192.168.1.90    hs' | sudo tee -a /etc/hosts
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not updating /etc/hosts."
fi


read -p "mount HS/V on /mnt/V? (Needs HS in the /etc/hosts file) [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo mkdir -p /mnt/P
    sudo mkdir -p /mnt/Q
    sudo mkdir -p /mnt/V
    sudo mkdir -p /mnt/W
    echo 'hs:/2xNVME      /mnt/P   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    echo 'hs:/1TBSSD      /mnt/Q   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    echo 'hs:/WL_Curated  /mnt/V   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    echo 'hs:/Wordlist    /mnt/W   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    sudo mount -a
    ls -la /mnt
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not mounting /mnt/V"
fi

hostname -I
/bin/echo -e "\e[1;36m echo ======= DONE ======="
