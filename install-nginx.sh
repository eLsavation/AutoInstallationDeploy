sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo usermod -aG devops www-data
sudo usermod -aG www-data devops
sudo service nginx restart
sudo service php8.1-fpm restart
