#!/bin/bash
AMI=ami-03265a0778a880afb
SG_ID=sg-00c14e6d6ba354df2
INSTANCES=("mangodb" "web")
for i in "${INSTANCES[@]}"
do
    if [ $i == "mangodb" ] || [ $i == "mysql" ]
    then
        INSTANCES_TYPE="t3.small"
    else
        INSTANCES_TYPE="t2.micro"     
    fi
    aws ec2 run-instances \
        --image-id $AMI \
        --instance-type $INSTANCES_TYPE \
        --security-group-ids $SG_ID \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$i'}]'
    $Private_IP=$(aws ec2 describe-instances \
            --query "Reservations[*].Instances[*].PrivateIpAddress" \
            --output=text)
    echo $i is $Private_IP
done