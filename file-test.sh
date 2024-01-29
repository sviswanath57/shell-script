#!/bin/bash
FOLDER="shellaa"
if [ -d "$FOLDER"];
then
echo "Folder is already exist $FOLDER"
else
mkdir $FOLDER
echo "New folder created"
fi