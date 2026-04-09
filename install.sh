#!/usr/bin/env bash

set -e

echo "===> Installing isobu purple rice..."

# перевірка Arch
if ! command -v pacman >/dev/null; then
    echo "❌ This script is for Arch Linux only!"
    exit 1
fi

echo "===> Installing packages..."
sudo pacman -S --needed --noconfirm \
    git sway swaybg swaylock swayidle \
    waybar alacritty foot \
    wofi rofi kitty \
    grim slurp wl-clipboard \
    pipewire pipewire-pulse wireplumber \
    pavucontrol \
    noto-fonts noto-fonts-emoji ttf-dejavu \
    brightnessctl playerctl \
    network-manager-applet

echo "===> Cloning repo..."
if [ ! -d "$HOME/.rice" ]; then
    git clone https://github.com/isobuYT/isobu-purple-dark-rice.git "$HOME/.rice"
fi

cd "$HOME/.rice"

echo "===> Copying configs..."

mkdir -p ~/.config

for dir in */; do
    case "$dir" in
        .git/|screenshots/|assets/) continue ;;
    esac

    if [ -d "$dir" ]; then
        echo "→ $dir"
        cp -r "$dir" ~/.config/
    fi
done

echo "===> Setting permissions..."
chmod +x ~/.config/sway/*.sh 2>/dev/null || true

echo "===> Done ✅"
echo "👉 Reboot or run: sway"
