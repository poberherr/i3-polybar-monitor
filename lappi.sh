#!/bin/bash
killall polybar
mons -o
xrandr --output eDP-1 --mode 2048x1152
${HOME}/Development/monitors/launch_polybar.sh
