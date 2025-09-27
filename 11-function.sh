#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 .... Failure"
        exit 1
    else 
        echo "$2 .... Success"
    fi
}

if [ USERID -ne 0 ]
then
    echo "please run this script with root acces"
else
    echo "you are a super user"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing Git"