#!/usr/bin/env bash
#
# FlyingBBQ - make capslock escape

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
notify-send "CAPS = ESC"
