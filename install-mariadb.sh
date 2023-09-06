#!/bin/sh
sudo apt update -y
sudo apt install mariadb-server -y
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
