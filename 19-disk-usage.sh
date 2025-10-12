#!/bin/bash
DISK_USAGE=$( df-hT | grep xfs )
DISK_THERSHOLD=6
while IFS=read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(ECHO $LINE | AWK -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THERSHOLD, current usage: $Usage \n"
    fi
done <<< $DISK_USAGE
