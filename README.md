# isobu dotfiles

> purple dark rice for arch linux + sway

![os](https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat&logo=arch-linux)
![wm](https://img.shields.io/badge/WM-Sway-9400D3?style=flat)
![terminal](https://img.shields.io/badge/Terminal-Kitty-9400D3?style=flat)
![font](https://img.shields.io/badge/Font-Maple_Mono-e0d0ff?style=flat)
![license](https://img.shields.io/badge/License-MIT-9400D3?style=flat)

---

## 📸 Screenshots

<p align="center">
  <img src="screenshots/previewgif.gif" width="100%" />
</p>

## 🖥️ Setup

| Component  | Program         |
|------------|-----------------|
| OS         | Arch Linux      |
| WM         | Sway            |
| Bar        | Waybar          |
| Terminal   | Kitty           |
| Launcher   | Wofi            |
| Fetch      | Fastfetch       |
| Shell      | Bash            |
| Theme      | Themix (oomox)  |
| Font       | Maple Mono      |
| Monitor    | Btop            |
| Calendar   | Calcurse        |
| Network    | Nmtui           |
| Media      | Playerctl/MPRIS |

---

## 🎨 Colors

| Role       | Hex       | Preview |
|------------|-----------|---------|
| Background | `#141216` | ![](https://placehold.co/60x20/141216/141216)
 |
| Foreground | `#e0d0ff` | ![](https://placehold.co/60x20/e0d0ff/e0d0ff) |
| Accent     | `#9400D3` | ![](https://placehold.co/60x20/9400D3/9400D3) |
| Accent 2   | `#a020f0` | ![](https://placehold.co/60x20/a020f0/a020f0) |
| Urgent     | `#fcb167` | ![](https://placehold.co/60x20/fcb167/fcb167) |
| Surface    | `#27232b` | ![](https://placehold.co/60x20/27232b/27232b) |

---

## 1. install script
```bash
bash <(curl -s https://raw.githubusercontent.com/isobuYT/isobu-purple-dark-rice/main/install.sh)
```

### 4. Apply GTK theme
```bash
gsettings set org.gnome.desktop.interface gtk-theme 'isobu-purple-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```
### 5. Install icons theme and apply
```bash
yay -S papirus-folders-git
papirus-folders -C violet --theme Papirus-Dark
```
### 6. Install font
```bash
yay -S maplemono-nf
fc-cache -fv
```

### 7. Set waybar network interface

Edit `~/.config/waybar/config` and change `wlan0` to your interface:
```bash
ip link show
# find your wifi interface name
```
```json
"network": {
  "interface": "your-interface-name"
}
```

### 9. Optionals
```bash
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user enable xdg-desktop-portal
systemctl --user enable xdg-desktop-portal-wlr
```
### 8. Start sway
```bash
sway
```

---

## ⌨️ Keybinds

| Key                  | Action              |
|----------------------|---------------------|
| `Super + Enter`      | Open Kitty          |
| `Super + A`          | Open Wofi           |
| `Super + Q`          | Close window        |
| `Super + 1-5`        | Switch workspace    |
| `Super + Shift + 1-5`| Move to workspace   |
| `Super + F`          | Fullscreen          |
| `Super + Shift + E`  | Exit sway           |

---

## 📁 Structure
```
dotfiles/
├── sway/
│   └── config
├── waybar/
│   ├── config
│   └── style.css
├── kitty/
│   └── kitty.conf
├── wofi/
│   ├── config
│   └── style.css
├── fastfetch/
│   └── config.jsonc
├── btop/
│   ├── btop.conf
│   └── themes
│       └── isobu-purple.theme 
├── cava/
│   └── config
├── nvim/
│   └── init.lua
├── screenshots/
└── wallpapers/
```

---

<p align="center">made with 💜 on arch linux</p>
