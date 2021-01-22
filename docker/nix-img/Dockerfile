FROM lnl7/nix:2.3.3

# copy default.nix from local file system to the container
COPY default.nix .

# copy nixpkgs pinning file to the container
COPY nixpkgs.nix .

# install everything in default.nix
RUN nix-env -i -f default.nix

# copy application files
COPY app .

RUN ["yarn","install"]

# do some incredibly 10x computer stuff
CMD ["node", "src/index.js"]
