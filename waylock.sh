#!/usr/bin/env bash
#
# FlyingBBQ - wayland lock

grim -o DP-1 -l 0 ~/.cache/mainscreen.png &
grim -o HDMI-A-1 -l 0 ~/.cache/secondscreen.png &
wait

hyprlock

