{ pkgs
, lib
, inputs
, config
, ...
}: {
  services.skhd = {
    enable = true;
    package = pkgs.skhd;
    skhdConfig = ''
      lalt - l : pmset displaysleepnow
    '';
  };
}
