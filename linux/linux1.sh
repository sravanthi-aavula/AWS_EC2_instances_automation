#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl start nginx
systemctl enable nginx
echo "Nginx Server Running" > /usr/share/nginx/html/index.html

