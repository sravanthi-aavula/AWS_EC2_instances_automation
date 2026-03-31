#!/bin/bash
set -e
echo "Creating Windows EC2 Instances"

#############################################
# Windows Instance 1 (Browser)
#############################################
 
echo "Launching Windows Instance 1 - Google Chrome Browser..."
 
WINDOWS_ID1=$(aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows/windows.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-Browser}]' \
--query "Instances[0].InstanceId" \
--output text)

echo "Windows Instance 1 launched -> $WINDOWS_ID1"
 
#############################################
# Windows Instance 2 (HTML Page)
#############################################
 
echo "Launching Windows Instance 2 - HTML Page..."
 
WINDOWS_ID2=$(aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows/windows1.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-HTML}]' \
--query "Instances[0].InstanceId" \
--output text)

echo "Windows Instance 2 launched -> $WINDOWS_ID2"
 
echo "HTML Page launched successfully!"

