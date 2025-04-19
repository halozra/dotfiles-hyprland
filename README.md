# 💻 Violet's Hyprland Dotfiles

Ini adalah konfigurasi pribadiku buat Hyprland WM yang cantik, smooth, dan tentunya romantis biar kamu makin semangat kerja atau ngoding bareng aku 🥰

---

## ✨ Features
- 💠 Hyprland setup with rounded corners, blur, and animations
- 🌙 Waybar with themed colors and matching font
- 💕 Rofi with wallpaper background and romantic style
- 📸 Screenshot script with `grim` + `slurp`
- 🔒 Logout screen with `wlogout` custom config

---

```
dotfiles-hyprland-violet/
├── hypr/
│   ├── hyprland.conf
│   ├── monitors.conf
│   └── autostart.conf
├── waybar/
│   ├── config.jsonc
│   └── style.css
├── rofi/
│   ├── config.rasi
│   └── theme.rasi
├── scripts/
│   ├── screenshot.sh
│   ├── powermenu.sh
│   └── lock.sh
├── wlogout/
│   ├── meson.build
│   ├── src/
│   │   ├── main.c
│   │   └── ...
│   └── data/
│       ├── config.json
│       └── themes/
│           └── default/
│               └── style.css
└── README.md
```





---

## 🛠️ Installation

```bash```
# Clone repo dotfiles
git clone https://github.com/USERNAME/dotfiles-hyprland-violet.git
cd dotfiles-hyprland-violet

# Copy configs
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r rofi ~/.config/
cp -r scripts ~/scripts
chmod +x ~/scripts/*

# Install wlogout secara manual
git clone https://github.com/ArtsyMacaw/wlogout.git
cd wlogout

# Pastikan dependencies sudah ada
sudo dnf install gtk3-devel gtk-layer-shell-devel scdoc meson ninja-build -y

# Build dan install
meson setup build
ninja -C build
sudo ninja -C build install
