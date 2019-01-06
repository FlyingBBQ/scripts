#!/bin/bash
#
# FlyingBBQ - sleep and lock

sleep 0.3
# Put system to sleep
systemctl suspend
# Lock the screen at wake-up
lock.sh
