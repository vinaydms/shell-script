#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d "$DIRECTORY" ]
then
    echo -e "$G SOURCE DIRECTORY EXISTS $N"
else
    echo -e "$R please make sure $R SOURCE_DIRECTORY exists $N"
fi