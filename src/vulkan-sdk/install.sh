#!/bin/sh
set -e

version=1.4.313.0
echo "Installing Vulkan SDK version $version"


echo "Downloading SDK"
wget "https://sdk.lunarg.com/sdk/download/1.4.313.0/linux/vulkansdk-linux-x86_64-$version.tar.xz"


echo "Validating checksum"

expected=4e957b66ade85eeaee95932aa7e3b45aea64db373c58a5eaefc8228cc71445c2
actual=$(sha256sum "vulkansdk-linux-x86_64-$version.tar.xz" | cut -d ' ' -f 1)

echo "Expected: $expected"
echo "Actual:   $actual"

if [ $expected = $actual ]; then
    echo "Checksums match"
else
    echo "Checksums don't match"
    exit 1
fi


install_target=/usr/share/vulkan
echo "Making install directory in user share: $install_target"
mkdir $install_target


echo "Unpacking SDK"
tar xf "vulkansdk-linux-x86_64-$version.tar.xz" -C $install_target


echo "Install dependencies"
sudo apt-get update
sudo apt-get -y install libxcb-xinput0 libxcb-xinerama0 libxcb-cursor-dev libvulkan-dev
