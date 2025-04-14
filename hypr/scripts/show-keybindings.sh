#!/bin/bash

KEYBINDS=$(find ~/.config/hypr/conf -type f -name "*.conf" \
  -exec grep -E "^\s*binds" {} \; | while read -r line; do
    # Hilangkan spasi awal
    line=$(echo "$line" | sed 's/^[[:space:]]*//')

    # Ambil jenis, tombol, aksi
    TYPE=$(echo "$line" | cut -d '=' -f1 | xargs)
    REST=$(echo "$line" | cut -d '=' -f2- | xargs)
    KEY=$(echo "$REST" | cut -d',' -f1-2 | xargs)
    ACTION=$(echo "$REST" | cut -d',' -f3- | xargs)

    echo "$TYPE | $KEY → $ACTION"
done)

# Tampilkan via wofi atau rofi
echo "$KEYBINDS" | rofi -dmenu -i -p "Keybindings"
# atau ganti rofi jadi wofi kalau kamu pakai wayland-only:
# echo "$KEYBINDS" | wofi --dmenu -p "Keybindings"

