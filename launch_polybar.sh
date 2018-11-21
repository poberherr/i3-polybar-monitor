#!/bin/bash
killall polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -l error --reload example &
  done
else
  polybar -l error --reload example &
fi
