#!/bin/sh
#COLORS
# Reset
Color_Off='\033[0m'       # Text Reset
#
# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
#
#
echo -n "$Cyan \n Updating System.. $Color_Off"
sudo apt update  > /dev/null 2>&1
#
echo -n "$Green \n Update Success.$Color_Off \n"
#
sudo kill $(ps aux | grep 'apache' | awk '{print $2}') > /dev/null 2>&1
echo -n "$Cyan \n Running Installation Apache2...$Color_Off"
sudo apt install apache2 -y > /dev/null 2>&1
echo "$Green \n Installation Apache2 Success. $Color_Off \n"
sudo systemctl enable apache2 > /dev/null 2>&1
echo "$Green \n Apache2 is Enabled. $Color_Off"
sudo systemctl start apache2 > /dev/null 2>&1
echo "$Green \n Apache2 is Started $Color_Off"
