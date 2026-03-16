#!/bin/bash
 
echo "Starting Linux EC2 Instance Deployment..."
 
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

echo "Linux instances deployed"

