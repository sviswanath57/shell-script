#/bin/bash

R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

DIR="/home/centos/oldlogs"
if [ ! -d $DIR ]
then
echo "Folder not exist"
fi

LOG_FILES=$(find /home/centos/oldlogs -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "delete log files $line"
done <<< $LOG_FILES
