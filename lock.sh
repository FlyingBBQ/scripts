#!/usr/bin/env bash
#
# FlyingBBQ - i3lock configuration

i3lock                       \
                             \
--time-color=ebdbb2ff        \
--date-color=ebdbb2ff        \
--verif-color=ebdbb2ff       \
--wrong-color=ebdbb2ff       \
                             \
--inside-color=282828a0      \
--ring-color=d79921ff        \
--keyhl-color=458588ff       \
--bshl-color=cc241dff        \
--insidever-color=4585885a   \
--insidewrong-color=cc241d5a \
--ringver-color=83a598ff     \
--ringwrong-color=fb4934ff   \
--line-uses-inside           \
                             \
--screen 1                   \
--blur 6                     \
--clock                      \
--indicator                  \
                             \
--date-str="%A, %b %d"       \
--time-str="%H:%M"           \
                             \
--wrong-text="Nope!"         \
--show-failed-attempts       \
--pass-media-keys
