#!/bin/bash
killall polybar
mons -e right
xrandr --output eDP-1 --mode 1368x768
${HOME}/Development/monitors/launch_polybar.sh
