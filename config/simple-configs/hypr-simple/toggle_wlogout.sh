#!/bin/bash

# Check if rofi is running
if pgrep -x "wlogout" > /dev/null; then
    # If running, kill all rofi instances
    pkill -x wlogout
else
    # If not running, launch rofi in run mode
    wlogout -b 2 --css ~/.config/wlogout-noanim/style.css --layout ~/.config/wlogout-noanim/layout
fi
