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

FILE="file-test"
if ! [ -f /devops/shell-script ];
then
    echo "file exist $FILE"
else
    touch $FILE
    echo " New file created with name $FILE"
fi