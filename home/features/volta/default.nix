{ pkgs, config, ... }: {

  home.packages = with pkgs; [
    volta
  ];
}