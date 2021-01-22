# bs-platform700.nix
{ pkgs ? import <nixpkgs> {} }:
let
  bs-platform-src =
    pkgs.fetchFromGitHub {
      owner = "turboMaCk";
      repo = "bs-platform.nix";
      rev = "2cbefeb081303f6364f28fcdca750a4453886bc1";
      sha256 = "02axqi00g3w6glwhms8dlb2sg1ac0v7bp9g9cbik0ky3x38fa29b";
    };
in with pkgs;
import "${bs-platform-src}/build-bs-platform.nix" {
  inherit stdenv fetchFromGitHub ninja runCommand nodejs python3;
  version = "7.0.0";
  ocaml-version = "4.06.1";
  src = fetchFromGitHub {
    owner = "BuckleScript";
    repo = "bucklescript";
    rev = "6dcf1f6ab5e35557098c3c1615ca804850c1813c";
    sha256 = "0jc4ndmr5s09hrjxw5zqi676w7b8jfafxqiyng8d9d3i1lzzaggj";
    fetchSubmodules = true;
  };
}
