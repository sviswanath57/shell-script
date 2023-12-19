#!/bin/bash
AMI=ami-03265a0778a880afb
SG_ID=sg-00c14e6d6ba354df2
INSTANCES=("mangodb" "web" "user")
ZONE_ID=Z0969811182YP4UP1MW89
DOMAIN_NAME="devopslife.cloud"
for i in "${INSTANCES[@]}"
do
    if [ $i == "mangodb" ] || [ $i == "mysql" ]
    then
        INSTANCES_TYPE="t3.small"
    else
        INSTANCES_TYPE="t2.micro"     
    fi
    Private_IP=$(aws ec2 run-instances \
        --image-id $AMI \
        --instance-type $INSTANCES_TYPE \
        --security-group-ids $SG_ID \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$i'}]' \
        --query 'Instances[0].PrivateIpAddress' --output text)
    echo "$i: $Private_IP"

aws route53 change-resource-record-sets \
  --hosted-zone-id $ZONE_ID \
  --change-batch '
{
    "Comment": "CREATE/DELETE/UPSERT a record",
    "Changes":[{
        "Action":"CREATE",
        "ResourceRecordSet":{
            "Name":"'$i'.'$DOMAIN_NAME'.",
            "Type":"A",
            "TTL":1,
        "ResourceRecords":[{
            "Value":"'$Private_IP'"}]
    }}]
}
'
done

