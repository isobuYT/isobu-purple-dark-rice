#!/usr/bin/env bash

set -e

echo "===> clone repo..."
git clone https://github.com/isobuYT/isobu-purple-dark-rice.git
cd isobu-purple-dark-rice

echo "===> download pkg..."
sudo pacman -S --needed --noconfirm \
    sway swaybg swaylock swayidle \
    waybar alacritty foot \
    wofi rofi \
    grim slurp wl-clipboard \
    pipewire pipewire-pulse wireplumber \
    pavucontrol \
    noto-fonts noto-fonts-emoji ttf-dejavu \
    brightnessctl playerctl \
    network-manager-applet

echo "===> copy files..."

mkdir -p ~/.config

for dir in */; do
    case "$dir" in
        .git/|screenshots/|assets/) continue ;;
    esac

    echo "cp $dir → ~/.config/"
    cp -r "$dir" ~/.config/
done

echo "===> rule..."
chmod +x ~/.config/sway/*.sh 2>/dev/null || true

echo "===> done ✅"
echo "reboot and in tty say:sway"
