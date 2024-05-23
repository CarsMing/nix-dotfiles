{ pkgs, flake, ... }: {

  imports = [
   ./colima.nix
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
    ssm-session-manager-plugin
    wget
    wireguard-tools
    mysql80
    kubectl
    kubectx
    kubernetes-helm
    kubent

    tanka
    jsonnet-bundler

    act

    docker-client
    docker-buildx
    dive
    bun
    k9s
    gh
    k6
    awscli2
    eksctl
  ];
}

