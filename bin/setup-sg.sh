#!/bin/bash

if [ $# -lt 1 ]
then
  echo -e "too few arguments!\n"
  echo -e "  bastion-ami.sh <version> <profile>"
  exit 128
fi

fromElb=$1

mac=$(curl http://169.254.169.254/latest/meta-data/mac)
sg=$(curl http://169.254.169.254/latest/meta-data/network/interfaces/macs/$mac/security-group-ids)

echo "Modify security group id $sg"

aws ec2 authorize-security-group-ingress \
    --group-id $sg \
    --protocol tcp \
    --port 80 \
    --source-group $fromElb
    
aws ec2 authorize-security-group-ingress \
    --group-id $sg \
    --protocol tcp \
    --port 8080 \
    --cidr 0.0.0.0/0