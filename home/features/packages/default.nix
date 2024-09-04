{ pkgs, flake, ... }: {

  imports = [
  ];

  home.packages = with pkgs; [
    flake.inputs.devenv.packages.${system}.devenv
    cachix

    nixpkgs-fmt
    sops

    _1password
    jq
    gnused
    ripgrep
    unixtools.watch
    htop
    coreutils
    pigz
    wget
    wireguard-tools
    mysql80
    gnused
  ];
}

