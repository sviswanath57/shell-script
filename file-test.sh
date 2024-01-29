#!/bin/bash
FOLDER="shell1"
if [ -d "$FOLDER"];
then
echo "Folder is already exist $FOLDER"
else
mkdir shell
echo "New folder created"
fi