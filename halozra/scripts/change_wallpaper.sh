#!/bin/bash

WALLPAPERS=(
  "~/.config/h.alozra/wallpapers/011805d3ae.jpg"
  "~/.config/halozra/wallpapers/0ea2322deb.jpg"
)

CURRENT=$(swww query current)

# Cari index current wallpaper
INDEX=0
for i in "${!WALLPAPERS[@]}"; do
  if [[ "${WALLPAPERS[$i]}" == "$CURRENT" ]]; then
    INDEX=$i
    break
  fi
done

# Next wallpaper index (loop)
NEXT=$(( (INDEX + 1) % ${#WALLPAPERS[@]} ))

# Ganti wallpaper pake swww dengan transisi grow
swww img "${WALLPAPERS[$NEXT]}" --transition-type grow
