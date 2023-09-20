#!/usr/bin/env bash

killall polybar

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bspwm_bar --config=~/.config/polybar/bspwm_bar &
polybar time_bar --config=~/.config/polybar/time_bar &
polybar spotify_bar --config=~/.config/polybar/spotify_bar &
polybar volume_bar --config=~/.config/polybar/volume_bar &
polybar ebar --config=~/.config/polybar/ebar &



echo "Bars launched..."
