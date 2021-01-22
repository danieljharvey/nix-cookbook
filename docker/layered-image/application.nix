with import <nixpkgs> { system = "x86_64-linux"; };

pkgs.dockerTools.buildLayeredImage {
  name = "nodejs-base";
  tag = "latest";
  contents = [ pkgs.nodejs-12_x yarn ];
  maxLayers = 120;
}
