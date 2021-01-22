{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let
  bs-platform =
    (import ./bs-platform700.nix { inherit pkgs; });
in
mkShell {
    buildInputs = [ bs-platform nodejs ];

    shellHook = ''
      mkdir -p node_modules
      ln -sfn ${bs-platform} ./node_modules/bs-platform
      ln -sfn ${bs-platform}/bin/* ./node_modules/.bin
      echo "bs-platform linked to $(pwd)/node_modules/bs-platform"

      npm install
    '';
}
