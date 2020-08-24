#!/bin/bash

sudo apt install tasksel 
sudo tasksel install samba-server 
sudo smbpasswd -a ryan 
sudo mkdir /var/temp 
sudo chmod 777 /var/temp/ 
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf_backup

echo "[global]"                                           | sudo tee -a /etc/samba/smb.conf
echo "   workgroup = WORKGROUP"                           | sudo tee -a /etc/samba/smb.conf
echo "   server string = %h server (Samba, Ubuntu)"       | sudo tee -a /etc/samba/smb.conf
echo "   log file = /var/log/samba/log.%m"                | sudo tee -a /etc/samba/smb.conf
echo "   max log size = 1000"                             | sudo tee -a /etc/samba/smb.conf
echo "   logging = file"                                  | sudo tee -a /etc/samba/smb.conf
echo "   panic action = /usr/share/samba/panic-action %d" | sudo tee -a /etc/samba/smb.conf
echo "   server role = standalone server"                 | sudo tee -a /etc/samba/smb.conf
echo "   obey pam restrictions = yes"                     | sudo tee -a /etc/samba/smb.conf
echo "   unix password sync = yes"                        | sudo tee -a /etc/samba/smb.conf
echo "   passwd program = /usr/bin/passwd %u"             | sudo tee -a /etc/samba/smb.conf
echo "   passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* ." | sudo tee -a /etc/samba/smb.conf
echo "   pam password change = yes"                       | sudo tee -a /etc/samba/smb.conf
echo "   map to guest = bad user"                         | sudo tee -a /etc/samba/smb.conf
echo "   usershare allow guests = yes"                    | sudo tee -a /etc/samba/smb.conf

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
