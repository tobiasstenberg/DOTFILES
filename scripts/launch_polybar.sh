#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar(s)
echo "---" | tee -a /tmp/polybar_top.log
polybar top >>/tmp/polybar_top.log 2>&1 &


echo "Bars launched..."