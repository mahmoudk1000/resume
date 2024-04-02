{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  name = "resume";

  buildInputs = with pkgs;
    [ nodejs ] ++ (with nodePackages; [ pnpm typescript ]);
}
