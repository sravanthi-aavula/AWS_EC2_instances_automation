#!/bin/bash
sudo yum update -y 
sudo yum install docker -y 
sudo systemctl start docker 
sudo systemctl enable docker 
echo "<h1>Docker is running successfully</h1>" > index.html

sudo docker run -d -p 80:80 \
-v $(pwd)/index.html:/usr/share/nginx/html/index.html \
nginx

