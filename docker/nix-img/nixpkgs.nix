# nixpkgs.nix

# we use this package as the base for all our derivations
# this means we always get the same versions

# to bump this file, get the commit hash from https://github.com/NixOS/nixpkgs
# that you wants
# then run nix-prefetch-url --unpack
# https://github.com/NixOS/nixpkgs/archive/<commit-hash-here>.tar.gz
# 
# this will return the sha256 hash for that file
# enter them below, save, and let the downloading begin!

let
  pkgs = import <nixpkgs> {};
in 
  import (
    pkgs.fetchFromGitHub {
      owner = "nixos";
      repo = "nixpkgs";
      rev = "5272327b81ed355bbed5659b8d303cf2979b6953";
      sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";
    }
    )
