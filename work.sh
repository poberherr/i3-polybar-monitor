#!/bin/bash
killall polybar
mons -S 5,6:R
xrandr --output DP-1-2 --rotate right
# xrandr --output DP-1-1 --primary
${HOME}/Development/monitors/launch_polybar.sh
