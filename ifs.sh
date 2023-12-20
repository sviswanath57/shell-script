#!/bin/bash
FILE=/etc/passwd

if [ ! -f $FILE ]
then
echo "Folder not exist"
fi
while IFS="/" read -r username password user_id group_id user_fullname home_dir shellpath
do
echo "User Name=$username"
echo "Password=$password"
echo "User_Id=$user_id"
echo "Group ID=$group_id"
#echo "username=$username"
#echo "username=$username"

done < $FILE