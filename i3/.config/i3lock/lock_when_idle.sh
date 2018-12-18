#!/bin/bash
xidlehook \
    --not-when-audio --not-when-fullscreen \
    --notify 5 \
    --notifier "notify-send --urgency=critical --expire-time=5000 \
                'locking in 5s'" \
    --canceller "notify-send --urgency=low --expire-time=5000 \
                'lock cancelled'" \
    --timer "betterlockscreen -l dimblur" \
    --time 2
