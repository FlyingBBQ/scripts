#!/bin/sh
#
# FlyingBBQ - switch media control keys

setplayer=/tmp/.setplayer

case "$1" in
    "mpc")
        touch $setplayer
        exit
        ;;
    "spot")
        rm $setplayer
        exit
        ;;
    *)
        ;;
esac

if [ ! -e $setplayer ]; then
    case "$1" in
        "play")
            playerctl play-pause
            ;;
        "next")
            playerctl next
            ;;
        "prev")
            playerctl previous
            ;;
        *)
            ;;
    esac
else
    case "$1" in
        "play")
            mpc -h ~/.config/mpd/socket toggle
            ;;
        "next")
            mpc -h ~/.config/mpd/socket next
            ;;
        "prev")
            mpc -h ~/.config/mpd/socket prev
            ;;
        *)
            ;;
    esac
fi
