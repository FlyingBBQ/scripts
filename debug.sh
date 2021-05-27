#!/usr/bin/env bash
#
# FlyingBBQ - start debugging sessions with gdb

arm-none-eabi-gdb -tui  --eval-command="target remote localhost:3333" $1 \
                        --eval-command="monitor arm semihosting enable" \
                        --eval-command="monitor reset halt"
