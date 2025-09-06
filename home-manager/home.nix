{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
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
}