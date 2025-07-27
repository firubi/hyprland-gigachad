#!/bin/bash

# Check if hyprsunset is running
if pgrep -x hyprsunset > /dev/null; then
    pkill -9 hyprsunset
else
    hyprsunset -t 5000
fi
