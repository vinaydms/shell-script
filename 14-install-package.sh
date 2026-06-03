#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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

for i in $@
do
    echo "package to install: $i"
    dnf installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo "$i already installed...SKIPPING"
    else
        echo "$ not installed...need to install"
done