#!/bin/bash

# Check if rofi is running
if pgrep -x "rofi" > /dev/null; then
    # If running, kill all rofi instances
    pkill -x rofi
else
    # If not running, launch rofi in run mode
    ~/.config/rofi/powermenu/type-2/powermenu.sh
fi
