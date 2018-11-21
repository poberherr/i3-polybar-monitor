#!/bin/bash
killall polybar
mons -o
xrandr --output eDP-1 --mode 1600x900
${HOME}/Development/monitors/launch_polybar.sh
