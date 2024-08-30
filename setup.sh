#!/bin/bash

# yay
sudo pacman -Syu
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si
cd
rm -rf /tmp/yay

#  essential packages
yay -S --needed --noconfirm polkit polkit-gnome qt6-wayland qt5-wayland xorg-xhost sddm \
  hyprland hyprlock hyprpaper xdg-desktop-portal-hyprland \
  grim slurp nano nm-connection-editor ffmpeg \
  thunar thunar-archive-plugin thunar-media-tags-plugin xarchiver thunar-volman ffmpegthumbnailer tumbler libgsf webp-pixbuf-loader gvfs gvfs-mtp gvfs-gphoto2 gvfs-smb sshfs \
  git wget curl waybar unzip unrar xdg-user-dirs gnome-keyring brightnessctl playerctl pavucontrol font-manager gnome-disk-utility \
  bluez blueberry \
  eog gedit galculator gimp obs-studio vlc wl-clipboard cliphist rofi-wayland kitty \
  nwg-look qt6ct kvantum \
  noto-fonts noto-fonts-emoji ttf-liberation ttf-dejavu ttf-firacode-nerd \
  gnome-themes-extra epapirus-icon-theme \
  yprpicker nwg-displays wlogout auto-cpufreq waypaper \
  flatpak \
  firefox
  
sudo systemctl enable sddm
sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
