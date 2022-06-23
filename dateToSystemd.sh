#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

# Here you should add the path to the directory where data.txt will be stored
date >> /home/.../date/data/data_systemd_timers.txt

# Add Systemd path here, this is default systemd location in ubuntu.
SYSD_PATH="/etc/systemd/system/"
# Here you should add path to the directory Systemd_data
SYSD_DATA_PATH="/home/.../date/systemd_data"

if ! [[ -f "$SYSD_PATH/data_script.service" ]] && ! [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    echo sudo password:
    read -s string
    echo "$string" | sudo -S mv $SYSD_DATA_PATH/data_script.service $SYSD_PATH
    echo "$string" | sudo -S mv $SYSD_DATA_PATH/data_script.timer $SYSD_PATH
    echo "$string" | sudo -S systemctl daemon-reload
    echo "$string" | sudo -S systemctl start data_script.timer

fi


} 2>log_systemd_timers.txt
Data
