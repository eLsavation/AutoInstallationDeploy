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
echo -n "$Red \n Create User Devops for Deploy.. $Color_Off"
sudo useradd -m devops  > /dev/null 2>&1
echo -n "$Green \n User Devops added. $Color_Off \n"
usermod -aG sudo devops > /dev/null 2>&1
echo -n "$Cyan \n Devops is Sudoers $Color_Off"
echo "devops ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
echo -n "$Cyan \n No Password for user Devops $Color_Off"
echo -n "$Green \n Done...$Color_Off"
