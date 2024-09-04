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
    ];

    casks = [
      "bruno"
      "spotify"
    ];
  };
}
