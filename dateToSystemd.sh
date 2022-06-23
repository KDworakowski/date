#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

# ADD SYSD PATH AND SYSDATA PATH
SYSD_PATH="/etc/.../date"
SYSD_DATA_PATH="/Users/.../date/systemd_data"

if ! [[ -f "$SYSD_PATH/data_script.service" ]] && ! [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    mv $SYSD_DATA_PATH/data_script.service $SYSD_PATH
    mv $SYSD_DATA_PATH/data_script.timer $SYSD_PATH
    systemctl daemon-reload
    systemctl start data_script.timer
fi

if [[ -f "$SYSD_PATH/data_script.service" ]] && [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    echo dupa
fi

# Here you should add the path to the directory where data.txt will be stored
date >> /Users/kacperdworakowski/BlueSoft/date/data/data_systemd_timers.txt

} 2>log_systemd_timers.txt
Data
