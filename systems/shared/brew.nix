{ pkgs
, ...
}: {

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };

    taps = [
    ];

    brews = [
      "docker-credential-helper"
      "grpcurl"
      "exiftool"
      "direnv"
      "git"
      "localtunnel"
    ];

    casks = [
      "spotify"
      "mysql-shell"
      "alt-tab"
      "keyboard-maestro"
      "postman"
      "insomnia"
      "gimp"
      "babeledit"
      "cursor"
    ];
  };
}
