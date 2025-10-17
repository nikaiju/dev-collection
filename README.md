# Nico's Dev Collection
Some dev container features I've put together. See https://containers.dev for more information about dev containers

## GPU Support
I needed to generate a CDI config to make my gpu available to podman. Some of the devcontainer settings are for this purpose as well and probably vary if you are using docker or have an AMD gpu  
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/cdi-support.html

The following commands must be run on each boot of the host machine
```~~

`sudo xhost +local:docker`
`sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml`

```

## TODO
Follow the standards specified for feature distribution found at https://containers.dev/implementors/features-distribution/
