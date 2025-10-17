# Vulkan SDK
Feature for setting up the Vulkan Graphics engine SDK. See https://vulkan.lunarg.com/home/welcome for more information about Vulkan

## Example Usage
```json
"features": {
    "https://github.com/nikaiju/dev-collection/raw/refs/heads/main/features/devcontainer-feature-vulkan-sdk.tgz": {}
}
```

## Environment

Only tested with a debian base image (bookworm) on a linux host machine (fedora 42 derivative)

## Setup

The following steps are required to view certain GUI applications. I'm not super familiar with all this but this lets me view the `vkcube` test.


This goes in your `devcontainer.json`
```json
"runArgs": [
    "--privileged"
]
```

Also run the following command in your terminal. This allows docker to use the X server for displaying applications
```sh
xhost +local:docker
```

### Verification
Run `vkcube` in your container terminal to see a sick spinning cube


## Known Issues
If some other feature installs the libvulkan-dev package before this feature runs, this feature breaks