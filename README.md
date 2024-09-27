# Installation

Requirements:
- Nix Darwin installer [https://github.com/DeterminateSystems/nix-installer]
- MacOS Sonoma
- Same hostname as in the config

## Step 1
Clone the repository in a specific path you want via https

## Step 2
Install Homebrew as it's relevant for the packages configured within the `brew.nix`

- https://docs.brew.sh/Installation

## Step 3
Initialise the setup with the following command:
```bash
nix run nix-darwin -- switch --flake /prefered/path/to/nix-dotfiles
```

Now your setup is running. It can take some minutes cause the cache and all necessary nix pkgs will initialized

## Step 4

Install node
```bash
volta install node@22.2
```

## Later changes
Your setup should be setup now.
Further changes can be applied with
```bash
darwin-rebuild switch --flake /prefered/path/to/nix-dotfiles/
```
