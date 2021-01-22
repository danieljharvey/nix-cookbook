# Docker and Nix

This repo is the smallest example of a build environment.

It has:
1. a `default.nix` file which lists all the packages we want
2. `nixpkgs.nix` contains out pinned version of nixpkgs - this means it'll build the
 same things every time
3. a nix-shell file to allow developing using whatever has been included in
`default.nix` by running `nix-shell` (or `nix-shell --pure`) in this folder.
4. a Dockerfile which installs everything from `default.nix` which you can add
yur application stuff to.
5. The crappest nodejs app ever to check it all works.
