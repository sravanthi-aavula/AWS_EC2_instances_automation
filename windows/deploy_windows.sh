#!/bin/bash

echo "Creating Windows EC2 Instances"

#############################################
# Windows Instance 1 (Browser)
#############################################
 
echo "Launching Windows Instance 1 - Google Chrome Browser..."
 
aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-Browser}]'

 
#############################################
# Windows Instance 2 (HTML Page)
#############################################
 
echo "Launching Windows Instance 2 - HTML Page..."
 
aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows1.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-HTML}]'

 
echo "HTML Page launched successfully!"

