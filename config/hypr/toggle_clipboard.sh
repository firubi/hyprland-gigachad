#!/bin/bash

# Check if rofi is running
if pgrep -x "wofi" > /dev/null; then
    # If running, kill all wofi instances
    pkill -x wofi
else
    # If not running, launch wofi in run mode
    cliphist list | wofi --dmenu --conf ~/.config/wofi/config --style ~/.config/wofi/style.css | cliphist decode | wl-copy
fi
