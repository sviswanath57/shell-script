#!/bin/bash
# FOLDER="shellaaanew"
# if [ -d "$FOLDER" ];
# then
#     echo "Folder is already exist $FOLDER"
#     exit 1
# else
#     mkdir $FOLDER
#     echo "New folder created $FOLDER"
# fi
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

FILE="file-testtt"
if [ -f /devops/shell-script ];
then
    echo "$Y file exist $FILE $N"
else
    touch $FILE
    echo "$G New file created with name $FILE $N"
fi