#!/bin/bash
echo "Starting script.."

# Update package lists
sudo pacman -Syu --noconfirm

# Install necessary packages
sudo pacman -S --noconfirm alacritty btop git polybar rofi flatpak

# Copy dotfiles
cp ./polybar/config.ini /etc/polybar/config.ini
mkdir ~/.config/rofi/config.rasi
cp ./rofi/config.rasi ~/.config/rofi/
mkdir ~/.config/alacritty/
cp ./alacritty/alacritty.toml ~/.config/alacritty

# Install flathub programs
flatpak install flathub com.jeffser.Alpaca --no-prompt
flatpak install flathub io.github.zen_browser.zen --no-prompt


echo "Installation/Config completed
