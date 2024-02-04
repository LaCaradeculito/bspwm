#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo pacman -Syy

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

echo "MAIN PACKAGES"

sleep 5

sudo pacman -S --noconfirm xorg xorg-xinit bspwm sxhkd firefox alacritty picom nitrogen lxappearance dmenu clipmenu xorg-xrandr ranger arandr alsa-utils alsa-utils arc-gtk-theme arc-icon-theme ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto adobe-source-code-pro-fonts cantarell-fonts playerctl scrot dunst pacman-contrib qutebrowser thunderbird libreoffice inkscape gimp sshfs

mkdir -p .config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

printf "\e[1;32mCHANGE NECESSARY FILES BEFORE REBOOT\e[0m"
