sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo usermod -aG devops www-data
sudo usermod -aG www-data devops
