#!/bin/bash

db_name=
db_user=
db_password=

# Make sure that NOBODY can access the server without a password
mysql -e "UPDATE mysql.user SET Password = PASSWORD('CHANGEME') WHERE User = 'root'"
# Kill the anonymous users
mysql -e "DROP USER ''@'localhost'"
# Because our hostname varies we'll use some Bash magic here.
mysql -e "DROP USER ''@'$(hostname)'"
# Kill off the demo database
mysql -e "DROP DATABASE test"
# Create new database
mysql -e "CREATE DATABASE $db_name"
# Create new user
mysql -e "CREATE USER '$db_user'@'%' IDENTIFIED BY '$db_password'"
# Grant Access to DB
mysql -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'localhost'"
# Make our changes take effect
mysql -e "FLUSH PRIVILEGES"
# Any subsequent tries to run queries this way will get access denied because lack of usr/pwd param



