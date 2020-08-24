#!/bin/bash

sudo apt install tasksel 
sudo tasksel install samba-server 

sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_backup  
sudo bash -c 'grep -v -E "^#|^;" /etc/samba/smb.conf_backup | grep . > /etc/samba/smb.conf' 

sudo smbpasswd -a ryan 

sudo mkdir /var/temp 
sudo chmod 777 /var/temp/ 

echo "[homes]"                              | sudo tee -a /etc/samba/smb.conf
echo "   comment = Home Directories"        | sudo tee -a /etc/samba/smb.conf
echo "   browseable = yes"                  | sudo tee -a /etc/samba/smb.conf
echo "   read only = no"                    | sudo tee -a /etc/samba/smb.conf
echo "   create mask = 0700"                | sudo tee -a /etc/samba/smb.conf
echo "   directory mask = 0700"             | sudo tee -a /etc/samba/smb.conf
echo "   valid users = %S"                  | sudo tee -a /etc/samba/smb.conf
echo ""                                     | sudo tee -a /etc/samba/smb.conf
echo "[temp]"                               | sudo tee -a /etc/samba/smb.conf
echo "   comment = public anonymous access" | sudo tee -a /etc/samba/smb.conf
echo "   path = /var/temp/"                 | sudo tee -a /etc/samba/smb.conf
echo "   browsable =yes"                    | sudo tee -a /etc/samba/smb.conf
echo "   create mask = 0660"                | sudo tee -a /etc/samba/smb.conf
echo "   directory mask = 0771"             | sudo tee -a /etc/samba/smb.conf
echo "   writable = yes"                    | sudo tee -a /etc/samba/smb.conf
echo "   guest ok = yes"                    | sudo tee -a /etc/samba/smb.conf

sudo systemctl restart smbd 

