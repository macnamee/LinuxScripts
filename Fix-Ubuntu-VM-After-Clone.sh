#!/bin/bash

# Configuration
HOSTNAME="NewHostNameHere"

# Update /etc/hostname
echo "$HOSTNAME" | sudo tee /etc/hostname

# Update /etc/hosts - replace old hostname with new one
# This replaces the hostname on the 127.0.1.1 line
sudo sed -i "s/127\.0\.1\.1.*/127.0.1.1\t$HOSTNAME/" /etc/hosts

# If the 127.0.1.1 line doesn't exist, add it
if ! grep -q "127.0.1.1" /etc/hosts; then
    echo -e "127.0.1.1\t$HOSTNAME" | sudo tee -a /etc/hosts
fi

# Apply the hostname immediately
sudo hostnamectl set-hostname "$HOSTNAME"

echo "Hostname set to: $HOSTNAME"
echo ""
echo "Current hostname: $(hostname)"
echo ""
echo "/etc/hosts contents:"
cat /etc/hosts


sudo rm /etc/machine-id
sudo systemd-machine-id-setup

#SSH host keys (security - prevents duplicate keys)
###################################################
sudo rm /etc/ssh/ssh_host_*
sudo dpkg-reconfigure openssh-server
sudo systemctl restart sshd


#Regenerate fail2ban database
###################################################
sudo fail2ban-client stop
sudo rm -f /var/lib/fail2ban/fail2ban.sqlite3
sudo systemctl start fail2ban

#Clear logs (optional - clean start)
##################################################
sudo journalctl --rotate
sudo journalctl --vacuum-time=1s
sudo rm -f /var/log/*.log /var/log/*.1 /var/log/*.gz
