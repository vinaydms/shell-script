#!/bin/bash

DISK_USAGE=$( df -hT | grep xfs )
DISK_THRESHOLD=6

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $LINE | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THERSHOLD, current usage: $USAGE"
    fi
done <<< $DISK_USAGE
echo -e "Message: $MESSAGE"

