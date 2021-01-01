#!/usr/bin/env bash

if ! command -v maim &> /dev/null
then
    echo "maim could not be found"
    exit
fi

filepath=""
case "$1" in
    "all")
        filepath=~/images/scrots/$(date +%Y-%m-%d_%M%S)_screen.png
        maim $filepath
        ;;
    "window")
        filepath=~/images/scrots/$(date +%Y-%m-%d_%M%S)_window.png
        maim -i $(xdotool getactivewindow) $filepath
        ;;
    "region")
        filepath=~/images/scrots/$(date +%Y-%m-%d_%M%S)_region.png
        maim -s $filepath
        ;;
    *)
        echo "wrong input"
        ;;
esac

if [ ! -z "$filepath" ]
then
    notify-send "Created $filepath"
fi
