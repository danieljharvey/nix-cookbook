let 
  pkgs = import <nixpkgs> {};
  packages = import (
    pkgs.fetchFromGitHub {
      owner = "nixos";
      repo = "nixpkgs";
      rev = "5272327b81ed355bbed5659b8d303cf2979b6953";
      sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";
    } 
) {};
in packages.stdenv.mkDerivation {
  name = "totally-bogus";
  buildInputs = with packages; [
    yarn   
  ];
} 
