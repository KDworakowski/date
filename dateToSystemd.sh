#!/bin/bash

Data() {

DIR="./data"
if ! [ -d "$DIR" ]; then
    mkdir data
fi

PASSWORD=""
# Here you should add the path to the directory where data.txt will be stored

# ADD SYSD PATH AND SYSDATA PATH
SYSD_PATH="/etc/systemd/system/"
SYSD_DATA_PATH="/home/kacper/date/systemd_data"

if ! [[ -f "$SYSD_PATH/data_script.service" ]] && ! [[ -f "$SYSD_PATH/data_script.timer" ]]
then
    echo $PASSWORD | sudo -S mv $SYSD_DATA_PATH/data_script.service $SYSD_PATH
    echo $PASSWORD | sudo -S mv $SYSD_DATA_PATH/data_script.timer $SYSD_PATH
    echo $PASSWORD | sudo -S systemctl daemon-reload
    echo $PASSWORD | sudo -S systemctl start data_script.timer

fi

date >> /home/kacper/date/data/data_systemd_timers.txt

} 2>log_systemd_timers.txt
Data
