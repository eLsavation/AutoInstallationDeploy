#!/bin/bash
#
db_name=""
db_user=""
db_password=""
#
# Create new database
sudo mysql -e "CREATE DATABASE if not exists $db_name"
# Create new user
sudo mysql -e "CREATE USER if not exists '$db_user'@'localhost' IDENTIFIED BY '$db_password'"
# Grant Access to DB
sudo mysql -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'localhost'"
# Make our changes take effect
sudo mysql -e "FLUSH PRIVILEGES"
#
