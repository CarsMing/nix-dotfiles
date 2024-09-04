{ config
, pkgs
, lib
, flake
, ... }:

{
  imports = [
    flake.inputs.mac-app-util.homeManagerModules.default
    ./default.nix
  ];

  home.username = "C.Minga";
  home.homeDirectory = lib.mkForce "/Users/C.Minga";

  home.packages = with pkgs; [
    skhd
  ];
}
