#!/bin/bash

#002

read -p "Do apt update && apt upgrade [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove -y
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
    sudo apt install zim -y
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

read -p "Add HS to /etc/hosts? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    echo '192.168.1.90    hs' | sudo tee -a /etc/hosts
    echo '192.168.1.22    hs2' | sudo tee -a /etc/hosts
    echo '192.168.1.37    pro' | sudo tee -a /etc/hosts
    echo '192.168.1.23    hs3' | sudo tee -a /etc/hosts
    echo '192.168.1.246   fullnode' | sudo tee -a /etc/hosts
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not updating /etc/hosts."
fi

read -p "Mount from HS on /mnt? [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    /bin/echo -e "\e[1;36m echo ------- Start -------"
    sudo mkdir -p /mnt/chia
    sudo mkdir -p /mnt/HS2_Temp
    sudo mkdir -p /mnt/HS3_Temp
    sudo mkdir -p /mnt/PRO_Temp    
    
    echo 'hs:/chia           /mnt/chia         nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab
    echo 'hs2:/Temp          /mnt/HS2_Temp     nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab    
    echo 'hs3:/Temp          /mnt/HS3_Temp     nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab    
    echo 'pro:/mnt/4TB_RAID0 /mnt/PRO_Temp     nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1' | sudo tee -a /etc/fstab        
    sudo mount -a
    cd /mnt && sudo chmod 777 * && sudo chown ryan * && sudo chgrp ryan *
    ls -la /mnt
    /bin/echo -e "\e[1;36m echo ======= END ======="
else
    echo "Not mounting PQVW and zz Drives from HS"
fi

hostname -I
/bin/echo -e "\e[1;36m echo ======= DONE ======="
