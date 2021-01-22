# Layered Docker images with Nix

## How to use

- Add deps to application.nix

- Change image name in application.nix

- Build image

```bash
nix-build application.nix
```

- Load created image into Docker

```bash
docker load < ./result
```

You can now run your image with `docker run`, or extend it to create your own
application images.

## Creating Linux images on MacOS

If on MacOS, you can create Linux images with
`https://github.com/nix-community/linuxkit-nix`

Install as follows:

```bash
nix-env -i /nix/store/jgq3savsyyrpsxvjlrz41nx09z7r0lch-linuxkit-builder
nix-linuxkit-configure

# add linuxkit ssh config to local ssh config
sudo cat /var/root/.ssh/nix-linuxkit-ssh-config >> ~/.ssh/config
```


