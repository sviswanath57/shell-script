#!/bin/bash
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"
id=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo -e "$2 $R Failed.."
else
    echo -e "$2 $G Sucessfull.."
fi
}

if [ $id -ne 0 ]
then
    echo -e "$R Error $N Run with root a/c or get root access"
    exit 1
else
    echo -e  "$Y You are root user"
fi
yum install net-tools -y

VALIDATE $? "Installing net-tools"
