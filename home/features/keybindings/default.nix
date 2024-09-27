{ pkgs, config, ... }: {

  home.file = {
    "Library/KeyBindings/DefaultKeyBinding.dict".source = ./DefaultKeyBinding.dict;
  };
}