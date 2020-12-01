#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

#make changes to .bashrc
echo 'export DB_HOST=192.168.10.200' >> ~/.bashrc
# exec bash
export DB_HOST=192.168.10.200

# #read changes just made to bash rc using current process not child
# source ~/.bashrc

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y

## Setting up nginx
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default #started getting the 502 error
# 502 error means that nginx is point to somewhere where there is nothing
# that means my app isn't running
# therefore I ran `pm2 start app.js on the app.js

sudo cp /home/ubuntu/environment/proxy.conf /etc/nginx/sites-available/proxy.conf
sudo ln -s /etc/nginx/sites-available/proxy.conf /etc/nginx/sites-enabled/proxy.conf


# finally, restart the nginx service so the new config takes hold
sudo service nginx restart
# sudo systemctl restart nginx

# Missing some automation here to start the servers
cd /home/ubuntu/app

pm2 start app.js


