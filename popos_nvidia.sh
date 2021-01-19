#!/bin/bash

sudo apt update && sudo apt upgrade

# Nvidia CUDA Toolkit
sudo apt install system76-cuda-latest
sudo apt install system76-cudnn-10.2

# Programming and Programming Tools
sudo apt install python3-pip idle neovim python3-neovim julia gdb texlive-latex-extra
pip3 install image numpy scipy pandas matplotlib seaborn folium scikit-learn opencv-python torch torchvision

# Software and Tools
sudo apt install thunderbird inkscape vlc nextcloud-desktop slack-desktop neofetch ranger zsh alacritty exfat-fuse exfat-utils

# MS Fonts
sudo add-apt-repository multiverse
sudo apt update && sudo apt install ttf-mscorefonts-installer

# OBS
sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

# VSCodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium

# ProtonVPN
wget -q -O - https://repo.protonvpn.com/debian/public_key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://repo.protonvpn.com/debian unstable main'
sudo apt update && sudo apt install protonvpn

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Proton Bridge
wget https://protonmail.com/download/protonmail-bridge_1.5.4-1_amd64.deb
sudo apt install ./protonmail-bridge_1.5.4-1_amd64.deb
rm protonmail-bridge_1.5.4-1_amd64.deb

# Brave Browser
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Discord
wget https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb
sudo apt install ./discord-0.0.13.deb
rm discord-0.0.13.deb

# Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb
rm zoom_amd64.deb

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Steam
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo apt install ./steam.deb
rm steam.deb

# Wine
# sudo dpkg --add-architecture i386
# wget -nc https://dl.winehq.org/wine-builds/winehq.key
# sudo apt-key add winehq.key
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main' 
# sudo apt install --install-recommends winehq-stable

# Lutris
# sudo add-apt-repository ppa:lutris-team/lutris
# sudo apt update
# sudo apt install lutris

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



