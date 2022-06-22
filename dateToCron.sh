#!/bin/bash

DIR="./logs"
if ! [ -d "$DIR" ]; then
    mkdir logs
fi

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

date >> /Users/kacperdworakowski/BlueSoft/date/data/data.txt

# in croncmdpath you should add the path to the directory where you cloned repository
# you can check the path of the directory by using pwd commend
croncmdpath="/Users/kacperdworakowski/BlueSoft/date/"
cronjob="* * * * * cd $croncmdpath && ./dateToCron.sh"
( crontab -l | grep -v -F "$croncmdpath" ; echo "$cronjob" ) | crontab -
