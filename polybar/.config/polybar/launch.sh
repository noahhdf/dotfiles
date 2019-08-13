#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar top &!
polybar bottom &!
# polybar combined &!

echo "Bars launched"
