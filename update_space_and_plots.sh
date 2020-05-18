#!/bin/bash
cd ~

rm get_plots.sh
rm get_space.sh

https://raw.githubusercontent.com/macnamee/LinuxScripts/master/get_plots.sh
https://raw.githubusercontent.com/macnamee/LinuxScripts/master/get_space.sh

/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
/bin/echo -e "\e[1;92m   Getting space info.\e[1;39m"
/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
#./get_space.sh > /mnt/P/space.txt



/bin/echo -e "\e[1;39m "
/bin/echo -e "\e[1;39m "
/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
/bin/echo -e "\e[1;92mGetting plot info.\e[1;39m"
/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
#./get_plots.sh > /mnt/P/plots.txt



/bin/echo -e "\e[1;39m "
/bin/echo -e "\e[1;39m "
/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
/bin/echo -e "\e[1;92mDone.\e[1;39m"
/bin/echo -e "\e[1;92m======================================================================\e[1;39m"
