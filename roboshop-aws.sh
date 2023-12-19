#!/bin/bash
AMI=ami-03265a0778a880afb
SG_ID=sg-00c14e6d6ba354df2
INSTANCES=("mangodb" "web" "mysql")
for i in "${INSTANCES[@]}"
do
    if [ $i == "mangodb" ] || [ $i == "mysql" ]
    then
        aws ec2 run-instances \
        --image-id $AMI \
        --instance-type t3.small \
        --security-group-ids SG_ID \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$i'}]'
    else
        aws ec2 run-instances \
        --image-id $AMI \
        --instance-type t2.micro \
        --security-group-ids SG_ID \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$i'}]'      
    fi


done