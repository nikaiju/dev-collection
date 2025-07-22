# Godot Engine
Installs the godot engine for game development. See https://godotengine.org

## Example Usage
```json
"features": {
    "https://github.com/nikaiju/dev-collection/raw/refs/heads/main/features/devcontainer-feature-godot-engine.tgz": {}
}
```

## Enviroment

Only tested with a debian base image (bookworm) on a linux host machine (fedora 42 derivative)

## Dependencies
Vulkan is a requirement for Godot, I think. Anyway, I need it so this `dependsOn` my [vulkan-sdk feature](../vulkan-sdk/)

## Additional Setup

The following steps are required to view certain GUI applications. I'm not super familiar with all this but this lets me view the `vkcube` test.


This goes in your `devcontainer.json`
```json
    "containerEnv": {
        "DISPLAY": "unix:0",
        "XDG_RUNTIME_DIR": "/tmp",
        "WAYLAND_DISPLAY": "${env:WAYLAND_DISPLAY}"
    },
    "runArgs": [
        "--privileged",
        "--security-opt=label=disable",
        "--device=/dev/dri",
        "-e", "XDG_RUNTIME_DIR=/tmp",
        "-e", "WAYLAND_DISPLAY=${env:WAYLAND_DISPLAY}",
        "-v", "${env:XDG_RUNTIME_DIR}/${env:WAYLAND_DISPLAY}:/tmp/${env:WAYLAND_DISPLAY}"
    ],
    "mounts": [
        "source=/tmp/.X11-unix,target=/tmp/.X11-unix,type=bind,consistency=cached"
    ]
```

You may also need the following runArg. I believe I did not because I am using one of microsoft's devcontainer base image for vscode, which sets up a user in a particular way
```json 
    "--userns=keep-id"
```

Also run the following command in your terminal. This allows docker to use the X server for displaying applications. 
```sh
xhost +local:docker
```