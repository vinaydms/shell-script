#!/bin/bash
USERID=$(id -u)

#if [ $USERID -ne 0 ]
#then    
    #echo "Please run this script with root access."
    #exit 1 # manually exit other than zero 
#else
    #echo "you are super user."
#fi

if [ $USERID -eq 0 ]
then
    echo "you are super user."
fi

echo "ALL Packages: $@" 