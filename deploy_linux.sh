#!/bin/bash

set -e 
echo "Starting Linux EC2 Instance Deployment..."
 
#############################################
# Linux Instance 1 (Nginx)
#############################################
 
echo "Launching Linux Instance 1 - Nginx..."
 
LINUX_ID1=$(aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux1.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-Nginx}]' \
--query "Instances[0].InstanceId" \
--output text)

echo "Linux Instance 1 launched -> $LINUX_ID1" 
 
#############################################
# Linux Instance 2 (Docker)
#############################################
 
echo "Launching Linux Instance 2 - Docker..."
 
LINUX_ID2=$(aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux2.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-Docker}]' \
--query "Instances[0].InstanceId" \
--output text)
 
echo "Linux Instance 2 launched -> $LINUX_ID2"
 
 
#############################################
# Linux Instance 3 (Java)
#############################################
 
echo "Launching Linux Instance 3 - Java..."
 
LINUX_ID3=$(aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux3.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-java}]' \
--query "Instances[0].InstanceId" \
--output text)

echo "Linux Instance 3 launched -> $LINUX_ID3"

echo "Linux instances deployed"
