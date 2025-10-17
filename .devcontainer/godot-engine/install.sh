#!/bin/sh
set -e

echo "Installing godot engine"
echo "Install dependencies"
sudo apt-get update
sudo apt-get -y install libxcb-xinput0 libxcb-xinerama0 libxcb-cursor-dev libvulkan-dev
sudo apt-get install -y \
    wget \
    libgl1-mesa-dri \
    libdbus-1-3 \
    libx11-6 \
    libx11-dev \
    libfontconfig1 \
    libfontconfig1-dev \
    libwayland-client0 \
    libwayland-dev \
    libxcursor1 \
    libxcursor-dev \
    libxext6 \
    libxext-dev \
    libxkbcommon0 \
    libxkbcommon-dev \
    libxinerama1 \
    libxinerama-dev \
    libxrandr2 \
    libxrandr-dev \
    libxi6 \
    libxi-dev \
    mesa-utils \
    libgl1-mesa-dri \
    libgl1-mesa-glx

wget "https://github.com/godotengine/godot/releases/download/4.4.1-stable/Godot_v4.4.1-stable_mono_linux_x86_64.zip"
sudo unzip Godot_v4.4.1-stable_mono_linux_x86_64.zip -d /usr/share/godot
sudo ln -s /usr/share/godot/Godot_v4.4.1-stable_mono_linux_x86_64/Godot_v4.4.1-stable_mono_linux.x86_64 /usr/bin/godot
