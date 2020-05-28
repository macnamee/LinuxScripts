#!/bin/bash
cd ~

read -p "Get updated versions from Github [y/n]" -n 1 -r
echo
if [[ $REPLY = y ]] ; then
    rm get_plots.sh
    rm get_space.sh

    wget https://raw.githubusercontent.com/macnamee/LinuxScripts/master/get_plots.sh
    wget https://raw.githubusercontent.com/macnamee/LinuxScripts/master/get_space.sh

    chmod +x get_plots.sh
    chmod +x get_space.sh
else
    echo "Using local versions of get_*.sh scripts."
fi

/bin/echo -e "\e[1;96m======================================================================\e[1;39m"
/bin/echo -e "\e[1;96m   Getting space info. V1.01\e[1;39m"
/bin/echo -e "\e[1;96m======================================================================\e[1;39m"
./get_space.sh > /mnt/P/space.txt



/bin/echo -e "\e[1;39m"
/bin/echo -e "\e[1;39m "
/bin/echo -e "\e[1;96m======================================================================\e[1;39m"
/bin/echo -e "\e[1;96mGetting plot info.\e[1;39m"
/bin/echo -e "\e[1;96m======================================================================\e[1;39m"
./get_plots.sh > /mnt/P/plots.txt



/bin/echo -e "\e[1;92m "
/bin/echo -e "\e[1;92m "
/bin/echo -e "\e[1;92m======================================================================"
/bin/echo -e "\e[1;92mDone."
/bin/echo -e "\e[1;92m======================================================================"
/bin/echo -e "\e[1;39m "
