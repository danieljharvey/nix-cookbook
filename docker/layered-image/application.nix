with import <nixpkgs> { system = "x86_64-linux"; };

pkgs.dockerTools.buildLayeredImage {
  name = "my-nix-image";
  tag = "latest";
  contents = [ pkgs.nodejs-12_x yarn ];
  maxLayers = 120;
}
