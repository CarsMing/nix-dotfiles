{ pkgs
, home-manager
, flake
, lib
, config
, ...
}: {
  imports = [
    ../shared/skhd.nix
    ../shared/brew.nix
    ../shared/system.nix
    ../shared/fonts.nix
  ];

  users.users."C.Minga" = {
    home = "/Users/C.Minga";
    shell = "${pkgs.fish}/bin/fish";
  };

  home-manager.users."C.Minga" = {
    imports = [
      ../../home/carstensmac.nix
    ];
  };


  nix.gc = {
    automatic = true;
    options = "--delete-older-than 2d";
    interval = {
      Hour = 5;
      Minute = 0;
    };
  };

  environment.systemPackages = with pkgs; [
    raycast
  ];

  services.nix-daemon.enable = true;
  nixpkgs.config.allowUnfree = true;

  programs.fish.enable = true;
  environment.shells = [ "${pkgs.fish}/bin/fish" ];

  documentation.enable = false;
  documentation.man.enable = false;

  time.timeZone = "Europe/Berlin";

  # Nix config from https://github.com/DeterminateSystems/nix-installer

  nix = {
    settings.trusted-users = [ "root" "C.Minga" ];
  };

}
