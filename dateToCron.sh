#!/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

# DIR="./logs"
# if ! [ -d "$DIR" ]; then
#     mkdir logs
# fi

# DIR="./data"
# if ! [ -d "$DIR" ]; then
#     mkdir data
# fi

date >> ./data/data.txt

# croncmdpath="Users/kacperdworakowski/BlueSoft/date/"
# cronjob="* * * * * cd $croncmdpath && ./dateToCron.sh"
# ( crontab -l | grep -v -F "$croncmdpath" ; echo "$cronjob" ) | crontab -
