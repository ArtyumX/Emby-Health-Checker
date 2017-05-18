#!/bin/bash
# Link: https://github.com/ArtyumX/Emby-Health-Checker
# --------------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# * <artyum@protonmail.com> wrote this file. As long as you retain this notice you
# * can do whatever you want with this stuff. If we meet some day, and you think
# * this stuff is worth it, you can buy me a beer in return Poul-Henning Kamp
# --------------------------------------------------------------------------------
 

# Checking if user is root.
if [ "$(id -u)" != "0" ]; then
        echo
        echo "This script must be run as root." 1>&2
        echo
        exit 1
fi

# Loop
while true
do

# Variables
emby=$(pgrep -u emby)
date=$(date +%d.%m.%Y-%H:%M:%S)

# We sleep first to avoid any race when starting for the first time
sleep 5;

# Condition
if [ -z "$emby" ]; then
        service emby-server start
        echo "Emby server detected as not running. Started at $date" >> /var/log/emby-health.log
fi

done
