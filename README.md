# 🍚 isobu dotfiles

> purple dark rice for arch linux + sway

![os](https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat&logo=arch-linux)
![wm](https://img.shields.io/badge/WM-Sway-9400D3?style=flat)
![terminal](https://img.shields.io/badge/Terminal-Kitty-9400D3?style=flat)
![font](https://img.shields.io/badge/Font-Maple_Mono-e0d0ff?style=flat)

---

## 󰹑 Screenshots

<p align="center">
  <img src="screenshots/20260322_11h18m03s_grim.png" width="49%" />
  <img src="screenshots/20260322_11h19m03s_grim.png" width="49%" />
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
| Background | `#141216` | ![](https://placehold.co/60x20/141216/141216) |
| Foreground | `#e0d0ff` | ![](https://placehold.co/60x20/e0d0ff/e0d0ff) |
| Accent     | `#9400D3` | ![](https://placehold.co/60x20/9400D3/9400D3) |
| Accent 2   | `#a020f0` | ![](https://placehold.co/60x20/a020f0/a020f0) |
| Urgent     | `#fcb167` | ![](https://placehold.co/60x20/fcb167/fcb167) |
| Surface    | `#27232b` | ![](https://placehold.co/60x20/27232b/27232b) |

---

## 📦 Dependencies
```bash
# core
sudo pacman -S sway waybar kitty wofi fastfetch playerctl

# aur (use paru or yay)
paru -S maplemono-nf themix-gui btop calcurse

# optional
sudo pacman -S pavucontrol nmtui grimshot
```

---

## 🚀 Installation

### 1. Clone the repo
```bash
git clone https://github.com/isobuYT/dotfiles.git ~/dotfiles
```

### 2. Create config directories
```bash
mkdir -p ~/.config/{sway,waybar,kitty,wofi,fastfetch}
mkdir -p ~/.config/oomox/colors
```

### 3. Copy configs
```bash
cp ~/dotfiles/sway/config        ~/.config/sway/config
cp ~/dotfiles/waybar/config      ~/.config/waybar/config
cp ~/dotfiles/waybar/style.css   ~/.config/waybar/style.css
cp ~/dotfiles/kitty/kitty.conf   ~/.config/kitty/kitty.conf
cp ~/dotfiles/wofi/config        ~/.config/wofi/config
cp ~/dotfiles/wofi/style.css     ~/.config/wofi/style.css
cp ~/dotfiles/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
cp ~/dotfiles/themix/isobu-purple-dark ~/.config/oomox/colors/
```

### 4. Install GTK theme
```bash
# open themix-gui, select isobu-purple-dark and click Apply
themix-gui
```

### 5. Apply GTK theme
```bash
gsettings set org.gnome.desktop.interface gtk-theme 'isobu-purple-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

### 6. Install font
```bash
paru -S maplemono-nf
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

### 8. Start sway
```bash
sway
```

---

## ⌨️ Keybinds

| Key                  | Action              |
|----------------------|---------------------|
| `Super + Enter`      | Open Kitty          |
| `Super + D`          | Open Wofi           |
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
└── themix/
    └── isobu-purple-dark
```

---

<p align="center">made with 💜 on arch linux</p>
