#!/bin/bash
FOLDER="shellaaanew"
if [ -d "$FOLDER" ];
then
    echo "Folder is already exist $FOLDER"
    exit 1
else
    mkdir $FOLDER
    echo "New folder created $FOLDER"
fi