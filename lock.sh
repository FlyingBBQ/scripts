#!/usr/bin/env bash
#
# FlyingBBQ - i3lock

i3lock                      \
\
--timecolor=ebdbb2ff        \
--datecolor=ebdbb2ff        \
--verifcolor=ebdbb2ff        \
--wrongcolor=ebdbb2ff        \
\
--insidecolor=282828a0      \
--ringcolor=d79921ff        \
--keyhlcolor=458588ff       \
--bshlcolor=cc241dff        \
--insidevercolor=4585885a   \
--insidewrongcolor=cc241d5a \
--ringvercolor=83a598ff     \
--ringwrongcolor=fb4934ff   \
--line-uses-inside          \
\
--screen 1                  \
--blur 6                    \
--clock                     \
--indicator                 \
\
--datestr="%A, %b %d"       \
--timestr="%H:%M"           \
\
--wrongtext="Nope!"         \
--show-failed-attempts      \
--pass-media-keys
