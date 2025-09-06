
## NixOS System config



## Install

```sh
sudo nixos-rebuild switch 
```

Set unstable channel
```sh
sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
```

Install with flakes
```sh
sudo nixos-rebuild switch --flake .
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