#!/bin/bash

echo "Creating Windows EC2 Instances"

#############################################
# Windows Instance 1 (Python)
#############################################
 
echo "Launching Windows Instance 1 - Python..."
 
aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows/windows.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-SQL}]'

 
#############################################
# Windows Instance 2 (SQL Server)
#############################################
 
echo "Launching Windows Instance 2 - SQL Server..."
 
aws ec2 run-instances \
--image-id ami-060cdb09135556485 \
--instance-type t3.micro \
--count 1 \
--key-name windows-key \
--security-group-ids sg-01af5729bc067e32c \
--associate-public-ip-address \
--user-data file://windows/windows1.ps1 \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Windows-Python}]'

 
echo "Windows instances launched successfully!"

