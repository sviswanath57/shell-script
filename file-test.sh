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

FILE="filenew-testttnew2"
if [ -f $FILE ];
then
    echo -e "File exist $Y $FILE $N"
else
    cd ../../devops/
    touch $FILE
    echo -e "New file created with name $G $FILE $N"
fi