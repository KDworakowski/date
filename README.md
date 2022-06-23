# date

## How to

1. clone repository using `git clone https://github.com/KDworakowski/date`
2. execute script using `./dateToCron.sh` or `./dateToSystemd.sh`

**IF YOU EXPERIENCE THAT SCRIPT WONT RUN, TRY CHANGING THE PERMISSIONS USING `chmod +x ./dateToCron.sh ./dateToSystemd.sh`**

## dateToCron.sh config

In `dateToCron.sh` you'll need to edit path in `line 7` and `line 13`, make sure you edit only the first part of the path without endings like `/date/data/data.txt` or `/date/`, otherwise script could not work. You can use `pwd` command to easily find your path
You can edit crontab time in the `line 16`

## dateToSystemd.sh config
In `dateToCron.sh` you'll need to edit path in `line 11`, `line 14` and `line 15`, make sure you edit only the first part of the path without endings like `/data_systemd_timers.txt`, `/date/systemd_data`, `/date/` etc, otherwise script could not work. You can use `pwd` command to easily find your path
You can edit systemd-timers time in file `/date/systemd_data/data_script.timer`.
You also need to add path to the `dateToSystemd.sh` file in file `/systemd_data/data_script.service` in `line 5`


**IF YOU'RE RUNNING THE SCRIPT FOR THE FIRST TIME, YOU MAY NEED TO WRITE YOUR PASSWORD FOR SUDO TO MAKE SCRIPT WORK PROPERLY**

## rm_script.sh
This script is made to delete service and timer for used by our script, moreover it stops the timer for data_script.timer, could be useful while debuging

**TO RUN THIS SCRIPT MAKE SURE TO EXECUTE IT AS A SUDO USING `sudo ./rm_script.sh`**
