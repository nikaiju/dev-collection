FROM buildpack-deps:bookworm-curl

ENV NVIDIA_DRIVER_CAPABILITIES=all
ENV NVIDIA_VISIBLE_DEVICES=all

RUN apt-get update
RUN apt-get install -y \
    pkg-config \
    libasound2-dev \
    libudev-dev \
    mesa-utils \
    vulkan-tools \
    libwayland-dev \
    libxkbcommon-dev \
    libvulkan1 \
    libvulkan-dev \
    libegl1-mesa-dev \
    libgles2-mesa-dev \
    libx11-dev \
    libxcursor-dev \
    libxrandr-dev \
    libxi-dev \
    libxcb1-dev \
    libxcb-icccm4-dev \
    libxcb-image0-dev \
    libxcb-keysyms1-dev \
    libxcb-randr0-dev \
    libxcb-shape0-dev \
    libxcb-xfixes0-dev \
    libxcb-xkb-dev \
    libegl1-mesa \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    libglu1-mesa-dev \
    libglu1-mesa \
    libgles2-mesa \
    libgtk-3-0 \
    fish
 
COPY nvidia_icd.json /etc/vulkan/icd.d
