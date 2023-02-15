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
echo -n "$Cyan \n Installing PHP.. $Color_Off"
echo -n "$Cyan \n Installing PHP in Progress \n $Color_Off"
sudo apt-get install software-properties-common -y > /dev/null 2>&1
sudo add-apt-repository ppa:ondrej/php --yes > /dev/null 2>&1
echo -n "$Green \n Repository PHP added \n $Color_Off"
echo -n "$Green \n Updating System... $Color_Off"
sudo apt-get update -y > /dev/null 2>&1
echo -n "$Green \n System Updated. \n $Color_Off"
sudo apt-get install php8.1 php8.1-fpm libapache2-mod-php8.1 libapache2-mod-fcgid php8.1-cli php8.1-curl php8.1-gd php8.1-gmp php8.1-mbstring php8.1-mysql php8.1-snmp php8.1-xml php8.1-zip -y > /dev/null 2>&1
echo -n "$Green \n PHP Installed $Color_Off"
sudo systemctl start php8.1-fpm > /dev/null 2>&1
echo -n "$Green \n PHP Started $Color_Off"
sudo systemctl enable php8.1-fpm > /dev/null 2>&1
echo -n "$Green \n PHP Enabled \n $Color_Off"
sudo a2enmod actions fcgid alias proxy_fcgi > /dev/null 2>&1
echo -n "$Green \n a2enmod Proxy Enabled \n $Color_Off"
sudo systemctl restart apache2 > /dev/null 2>&1
echo -n "$Green \n Apache2 has restarted \n $Color_Off"
echo -n "$Cyan \n Installing PHP Success \n $Color_Off"
#
