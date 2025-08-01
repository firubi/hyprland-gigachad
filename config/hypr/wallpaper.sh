#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Real-wallpapers"
#I dont know what the fuck I am doing
menu() {
    find "${WALLPAPER_DIR}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | awk '{print "img:"$0}'
}
main() {
    choice=$(menu | wofi -c ~/.config/wofi/wallpaper -s ~/.config/wofi/style-wallpaper.css --show dmenu --prompt "Select Wallpaper:" )
    selected_wallpaper=$(echo "$choice" | sed 's/^img://')
    swww img -o DP-4 "$selected_wallpaper" --transition-type fade --transition-fps 120 --transition-duration 1.5
    swww img -o HDMI-A-2 /home/firubi/Pictures/Real-wallpapers/wallhaven-xe5myl.jpg --transition-type any --transition-fps 120 --transition-duration 1.5 #WALLPAPER NO CHANGE ON 2ND MONITOR
    wal -i "$selected_wallpaper" -n -e --cols16
    swaync-client --reload-css
    pywalfox update
}
main
