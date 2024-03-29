#!/bin/bash

#https://askubuntu.com/questions/1237288/20-04-xrdp-kde-plasma-connect-issue


sudo apt install -y xrdp
sudo sed -e 's/^new_cursors=true/new_cursors=false/g' -i /etc/xrdp/xrdp.ini
sudo systemctl enable xrdp
sudo systemctl restart xrdp

echo "/usr/bin/startplasma-x11" > ~/.xsession


export D=/usr/share/plasma:/usr/local/share:/usr/share:/var/lib/snapd/desktop
export C=/etc/xdg/xdg-plasma:/etc/xdg
export C=${C}:/usr/share/kubuntu-default-settings/kf5-settings


cat <<EOF > ~/.xsessionrc
export XDG_SESSION_DESKTOP=KDE
export XDG_DATA_DIRS=${D}
export XDG_CONFIG_DIRS=${C}
EOF

cat <<EOF | \
  sudo tee /etc/polkit-1/localauthority/50-local.d/xrdp-NetworkManager.pkla
[Netowrkmanager]
Identity=unix-group:sudo
Action=org.freedesktop.NetworkManager.network-control
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOF


cat <<EOF | \
  sudo tee /etc/polkit-1/localauthority/50-local.d/xrdp-packagekit.pkla
[Netowrkmanager]
Identity=unix-group:sudo
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=auth_admin
ResultActive=yes
EOF
sudo systemctl restart polkit
