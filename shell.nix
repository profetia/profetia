{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = with pkgs; [
    typst
    typstyle
    nixfmt
    just
  ];
  shellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
