
## NixOS System config



## Install

```sh
sudo nixos-rebuild switch 
```

Set unstable channel
```sh
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
```

Install with flakes
```sh
sudo nixos-rebuild switch --flake .
sudo nixos-rebuild switch --flake .#harley
```


## Upgrade

```sh
sudo nixos-rebuild switch --upgrade
```


## Resources
https://nixos.org/learn/
https://nix.dev/
https://zero-to-nix.com/
https://nixos.org/guides/nix-pills/06-our-first-derivation

## Reference Projects

https://github.com/partisani/nixfiles/tree/main
https://github.com/ChristianWSmith/nix-config/tree/main
https://github.com/fryalien/nix/tree/main
https://github.com/Andrey0189/nixos-config/blob/main/flake.nix