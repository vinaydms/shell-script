#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "Please run this script with root access."
    exit 1 # manually exit other than zero 
else
    echo "you are super user."
fi

dnf install mysqllll -y

dnf install git -y

echo "is script proceeding?"