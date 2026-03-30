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
--user-data file://linux/linux1.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-Nginx}]' 
 
#############################################
# Linux Instance 2 (Docker)
#############################################
 
echo "Launching Linux Instance 2 - Docker..."
 
aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux2.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-Docker}]'

 
 
#############################################
# Linux Instance 3 (Java)
#############################################
 
echo "Launching Linux Instance 3 - Java..."
 
aws ec2 run-instances \
--image-id ami-037688ecd92e8611e \
--instance-type t3.micro \
--count 1 \
--user-data file://linux/linux3.sh \
--tag-specifications 'ResourceType=instance, Tags=[{Key=Name, Value=Linux-java}]'


echo "Linux instances deployed"
