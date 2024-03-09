# Nixvim template

![Screenshot](./preview.png)

## Run
```bash
nix run github:Sly-Harvey/nixvim
```

## Install on NixOS
### Add this to your flake.nix
```
nixvim.url = "github:Sly-Harvey/nixvim";
```
### Then in your home-manager configuration add this
```
home.packages = with pkgs; [
    { inputs, pkgs, ... }:
    {
        inputs.nixvim.packages.${system}.default
    }
]
```
