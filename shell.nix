with import <nixpkgs> { };

let
  kalkun = pkgs.callPackage ./default.nix { };
in
pkgs.mkShell {
  name = "kalkun-shell";

  buildInputs = [
    kalkun
  ];
}
