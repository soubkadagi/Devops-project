#!/bin/bash

#author:soubhagya
#description: checking disk space

email=soubhagyakadagi17@gmail.com
limit=10
use=$(df -h | grep D: | awk '{ print $5 }' | cut -d'%' -f1)
#use=$(df -h | grep /dev/nvme0n1p128 | awk '{ print $5 }' | cut -d'%' -f1)

if [ $use -ge $limit ]
then
echo "percent used $use -running out of disk space"

echo "percent used: $use | mail -s "running out of disk space" $email"

echo "email sent"
else
echo "not crossed limit"
fi
