#!/bin/bash
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"
id=$(id -u)
if [ $id ne 0 ]
then
    echo "Run with root a/c or get root access"
else
        yum install ngnix -y
fi