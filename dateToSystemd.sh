#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

# ADD SYSD PATH AND SYSDATA PATH
SYSD_PATH="/etc/systemd/system/"
SYSD_DATA_PATH="/home/kacper/date/systemd_data"

if ! [[ -f "$SYSD_PATH/data_script.service" ]] && ! [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    sudo mv $SYSD_DATA_PATH/data_script.service $SYSD_PATH
    sudo mv $SYSD_DATA_PATH/data_script.timer $SYSD_PATH
    sudo systemctl daemon-reload
    sudo systemctl start data_script.timer
fi

# Here you should add the path to the directory where data.txt will be stored
date >> /home/kacper/date/data/data_systemd_timers.txt

} 2>log_systemd_timers.txt
Data
