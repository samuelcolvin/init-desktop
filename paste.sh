#!/usr/bin/env bash
unset x y
eval $(xwininfo -id $(xdotool getactivewindow) |
       sed -n -e 's/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p' \
                       -e 's/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p')
       xdotool mousemove $(($x + 200)) $(($y + 200))
xdotool click 2
