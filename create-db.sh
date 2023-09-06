#!/bin/bash

db_name=
db_user=
db_password=""

# Create new database
sudo mysql -e "CREATE DATABASE $db_name"
# Create new user
sudo mysql -e "CREATE USER '$db_user'@'localhost IDENTIFIED BY '$db_password'"
# Grant Access to DB
sudo mysql -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'localhost'"
# Make our changes take effect
sudo mysql -e "FLUSH PRIVILEGES"
# Any subsequent tries to run queries this way will get access denied because lack of usr/pwd param



