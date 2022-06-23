#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

# Here you should add the path to the directory where data.txt will be stored
date >> /Users/.../date/data/data_crontab.txt

# in croncmdpath you should add the path to the directory where you cloned repository
# you can check the path of the directory by using pwd commend
croncmdpath="/Users/.../date/"

cronjob="* * * * * cd $croncmdpath && ./dateToCron.sh"
( crontab -l | grep -v -F "$croncmdpath" ; echo "$cronjob" ) | crontab -

} 2>log_crontab.txt
Data
