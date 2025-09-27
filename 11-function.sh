#!/bin/bash
USERID=$(id -u)

VALIDATE(){ 
    echo "exit status: $1"
    echo "what are you doing: $2"

}
if [ USERID -ne 0 ]
then
    echo "please run this script with root acces"
else
    echo "you are a super user"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

#dnf install git -y
#VALIDATE $? "Installing Git"