#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo echo "Hi Everyone" >/var/www/html/index.nginx-debian.html
