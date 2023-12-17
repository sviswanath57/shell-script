#!/bin/bash
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"
id=$(id -u)
if [ $id eq 0 ]
then
    yum install ngnix
else
    echo "Run with root a/c or get root access"
fi
