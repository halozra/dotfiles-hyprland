#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
INTERVAL=10
MONITOR="HDMI-A-1"

while true; do
    shuf -e in "$WALLPAPER_DIR"/*.{jpg,png}; do
        hyprctl hyprpaper unload all
        hyprctl hyprpaper preload "$wp"
        hyprctl hyprpaper wallpaper "$MONITOR,$wp"
        sleep $INTERVAL
    done
done






