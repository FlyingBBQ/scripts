#!/bin/sh
#
# FlyingBBQ - set monitors with xrandr

m_main="HDMI2"
m_ext="HDMI1"
m_lap="eDP1"


echo "setting monitors.."

case "$1" in
    "one")
        if [ "$(xrandr -q | grep $m_main | awk '{print $2}')" -eq "connected" ]; then
            xrandr --output $m_main --off
        fi
        if [ "$(xrandr -q | grep $m_ext | awk '{print $2}')" -eq "connected" ]; then
            xrandr --output $m_ext --off
        fi
        xrandr --output $m_lap --primary --mode 1920x1080
        ;;
    "two")
        xrandr --output $m_main --primary --mode 1920x1080
        xrandr --output $m_ext --mode 1920x1080 --right-of $m_main
        xrandr --output $m_ext --rotate right
        xrandr --output $m_lap --off
        ;;
    "three")
        xrandr --output $m_main --primary --mode 1920x1080 --above $m_lap
        xrandr --output $m_ext --mode 1920x1080 --right-of $m_main
        xrandr --output $m_ext --rotate right
        ;;
    *)
        echo "wrong input"
        ;;
esac
