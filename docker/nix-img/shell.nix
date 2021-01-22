# we're using standard unpinned nixpkgs for mkDerivations, everything else is
# pinned
with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "totally-bogus";
  buildInputs = import ./default.nix {};
}
