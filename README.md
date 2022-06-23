# date

## How to

1. clone repository using `git clone https://github.com/KDworakowski/date`
2. execute script using `./dateToCron.sh` or `./dateToSystemd.sh`

**IF YOU EXPERIENCE THAT SCRIPT WONT RUN, TRY CHANGING THE PERMISSIONS USING `chmod +x ./dateToCron.sh ./dateToSystemd.sh`**

## dateToCron.sh config

In `dateToCron.sh` you'll need to edit path in `line 7` and `line 13`, make sure you edit only the first part of the path without endings like `/date/data/data.txt` or `/date/`, otherwise script could not work. You can use `pwd` command to easily find your path
You can edit crontab time in the `line 16`

## dateToSystemd.sh config
In `dateToCron.sh` you'll need to edit path in `line 7` and `line 13`, make sure you edit only the first part of the path without endings like `/date/data/data.txt` or `/date/`, otherwise script could not work. You can use `pwd` command to easily find your path
You can edit crontab time in the `line 16`
