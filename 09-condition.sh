#!/bin/bash

NUMBER=$!

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10"
fi
#-gt, -lt, -eq, -ge, -le