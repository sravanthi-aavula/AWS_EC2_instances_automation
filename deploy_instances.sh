#!/bin/bash
 
echo "Starting EC2 Instance Deployment..."
 
#############################################
# Linux Instance 1 (Nginx)
#############################################
 
echo "Launching Linux Instance 1 - Nginx..."
 
aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux1.sh
 
 
#############################################
# Linux Instance 2 (Docker)
#############################################
 
echo "Launching Linux Instance 2 - Docker..."
 
aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux2.sh
 
 
#############################################
# Linux Instance 3 (Jenkins)
#############################################
 
echo "Launching Linux Instance 3 - Jenkins..."
 
aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux3.sh
 
 
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
--user-data file://windows/windows.ps1
 
 
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
--user-data file://windows/windows1.ps1
 
 
echo "All 5 instances launched successfully!"

