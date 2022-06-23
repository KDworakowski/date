#!/bin/bash

rm -rf /etc/systemd/system/data_script.service
rm -rf /etc/systemd/system/data_script.timer
systemctl stop data_script.timer
