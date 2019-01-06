#!/bin/sh
#
# FlyingBBQ - set monitors

echo "setting monitors..."
xrandr --output HDMI-0 --mode 1920x1080 --primary --pos 1080x0
xrandr --output DVI-0 --mode 1920x1080 --left-of HDMI-0 --rotate left --pos 0x0
