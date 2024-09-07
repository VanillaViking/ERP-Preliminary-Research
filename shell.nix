{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
buildInputs = [ typst ]; # your dependencies here
}
