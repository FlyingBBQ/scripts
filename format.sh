#!/usr/bin/env bash
#
# FlyingBBQ - formatting rules for C using astyle

astyle \
    --style=1tbs \
    --indent=spaces=8 \
    --min-conditional-indent=2 \
    --pad-oper \
    --pad-comma \
    --pad-header \
    --align-pointer=name \
    --break-one-line-headers \
    --break-return-type \
    --max-continuation-indent=40 \
    --max-code-length=80 \
    $1

