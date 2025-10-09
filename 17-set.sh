#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access"
    exit 1 # Manually exit if error comes.
else 
    echo "you are super user"
fi

dnf install mysqllll -y

dnf install git -y 

echo "is script proceeding?"

