#!/bin/bash
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"
id=$(id -u)
if [ $id -ne 0 ]
then
    echo -e "$R Error $N Run with root a/c or get root access"
    exit 1
else
    echo -e  "$Y You are root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then
    echo -e "MySQL $R NOT $N installed Sucessfull"
else
    echo -e "MySQL installed $G Sucessfull $N"
fi
