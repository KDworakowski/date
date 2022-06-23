#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

# Here you should add the path to the directory where data.txt will be stored
date >> /home/kacper/date/data/data_systemd_timers.txt

# ADD SYSD PATH AND SYSDATA PATH
SYSD_PATH="/etc/systemd/system/"
SYSD_DATA_PATH="/home/kacper/date/systemd_data"

if ! [[ -f "$SYSD_PATH/data_script.service" ]] && ! [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    mv $SYSD_DATA_PATH/data_script.service $SYSD_PATH
    mv $SYSD_DATA_PATH/data_script.timer $SYSD_PATH

fi

} 2>log_systemd_timers.txt
Data
