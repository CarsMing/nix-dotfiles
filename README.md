# Installation

Requirements:
- Nix Darwin installer [https://github.com/DeterminateSystems/nix-installer]
- MacOS Sonoma
- Same hostname as in the config

## Step 1
Clone the repository in a specific path you want via https

## Step 2
Initialise the setup with the following command:
```bash
nix run nix-darwin -- switch --flake /prefered/path/to/nix-dotfiles
```

Now your setup is running. It can take some minutes cause the cache and all necessary nix pkgs will initialized

## Step 3
Your setup should be setup now.
Further changes can be applied with
```bash
darwin-rebuild switch --flake /prefered/path/to/nix-dotfiles/
```

## Step 4
Install Homebrew. It's sometimes needed for specific packages. You don't have to take care about updates e.g. It will be automatically applied and managed by nix

- https://docs.brew.sh/Installation