#!/bin/bash
lines=`tput lines`
# echo "number of lines: $lines"
lines=`expr $lines - 1`
for i in `seq 1 $lines`; do printf '\n'; done
