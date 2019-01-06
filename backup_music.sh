#!/bin/sh
#
# FlyingBBQ - backup music

# pmount /dev/sdc1

# rsync /folder/to/backup /location/of/backup
# -archive
# -verbose
# -delete on source = delete on backup
rsync -av --delete ~/music /media/sdc1
