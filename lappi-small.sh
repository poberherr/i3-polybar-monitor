#!/bin/bash
killall polybar
mons -o
xrandr --output eDP-1 --mode 2560x1440 
${HOME}/Development/monitors/launch_polybar.sh
