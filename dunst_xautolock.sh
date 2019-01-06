#!/bin/sh
#
# FlyingBBQ - xautolock notification

TOGGLE=/tmp/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    notify-send "xautolock disabled"
    pkill xautolock
else
    rm $TOGGLE
    xautolock -time 15 -locker '/usr/bin/i3lock-fancy' &
    notify-send "xautolock enabled"
fi
