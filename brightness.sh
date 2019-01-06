#!/bin/dash
#
# FlyingBBQ - change brightness

brightness_file='/sys/class/backlight/*/brightness'
brightness_max=$(cat /sys/class/backlight/*/max_brightness)
brightness_cur=$(cat $brightness_file)
brightness_step=250

# check if one or more arguments were given
if [ $# -eq 0 ]
then
    echo Set brightness to:
    read input
    brightness=$input
else
    brightness=$1
fi

case $brightness in
    up)
        brightness=$(( $brightness_cur + $brightness_step ))
        ;;
    down)
        brightness=$(($brightness_cur - $brightness_step))
        ;;
    *[!0-9]*)
        echo $brightness is not a positive integer.
        ;;
esac

if [ $brightness -lt 1 ]
then
    brightness=$brightness_step
fi
if [ $brightness -gt $brightness_max ]
then
    brightness=$brightness_max
fi

truncate -s 0 $brightness_file
echo "$brightness" | tee -a $brightness_file
