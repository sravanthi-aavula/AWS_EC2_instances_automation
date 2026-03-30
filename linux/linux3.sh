#!/bin/bash
sudo yum update -y
sudo yum install java-17-amazon-corretto -y
sudo amazon-linux-extras install nginx1 -y

sudo systemctl start nginx
sudo systemctl enable nginx

echo "<h1> Java installled succesfully </h1>" | sudo tee /usr/share/nginx/html/index.html

