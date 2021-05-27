#!/usr/bin/env bash
#
# FlyingBBQ - xautolock notification

toggle_file=/tmp/.toggle_autolock
path_to_lock=/usr/bin/i3lock

if [ ! -e $toggle_file ]; then
    touch $toggle_file
    notify-send "xautolock disabled"
    pkill xautolock
else
    rm $toggle_file
    xautolock -time 15 -locker $path_to_lock &
    notify-send "xautolock enabled"
fi
