{ config, pkgs, ... }:

{

  imports = [
    #./zsh.nix
    #./modules/bundle.nix
    ./modules/niri/niri.nix

  ];

  home = {
    username = "harley";
    homeDirectory = "/home/harley";
    stateVersion = "23.11";
    file = {
      #".config/fish".source = ./dots/fish;
      #".local/share/konsole".source = ./dots/konsole;
      #".config/alacritty".source = ./dots/alacritty;
      #".config/kitty".source = ./dots/kitty;
      #".config/foot".source = ./dots/foot;
      #".config/waybar".source = ./dots/waybar;
      #".config/rofi".source = ./dots/rofi;
    };
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;


  ########################################
  # 🧰 User tools and base config
  ########################################
  home.packages = with pkgs; [
    fastfetch
    btop
    starship
    swaynotificationcenter
    waybar-mpris
    playerctl
    waypaper
    waybar
    swaylock
    swww
    zed-editor
    bat
  ];

  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";

    colorScheme = "dark";
  };
  qt = {
    style.name = "adwaita-dark";
  };
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = pkgs.catppuccin-cursors.mochaSapphire;
    name = "catppuccin-mocha-sapphire-cursors";
    size = 12;
  };

  ########################################
  # 🧬 Git config
  ########################################
  programs = {
    bash.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };

    git = {
      enable = true;
      userName = "Harley Bussell";
      userEmail = "harley.r.bussell@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = true;
        color.ui = "auto";
      };
    };
  };

  services.swww.enable = true;
  services.swaync.enable = true;
}
