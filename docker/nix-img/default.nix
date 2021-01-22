# this file can be passed custom packages
# but will default to ./nixpkgs.nix
{ pkgs ? import ./nixpkgs.nix {} }:
[ 
  pkgs.yarn 
  pkgs.nodejs-12_x
]
