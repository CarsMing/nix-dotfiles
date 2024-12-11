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

  home.username = "cminga";
  home.homeDirectory = lib.mkForce "/Users/cminga";

  home.packages = with pkgs; [
    skhd
  ];
}
