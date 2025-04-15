{ lib, stable, pkgs, ... }:
let
  username = "adeyahya";
in {
  fonts.fontconfig.enable = true;

  programs.git = {
    enable = true;
    userEmail = "adeyahyaprasetyo@gmail.com";
    userName = "adeyahya";
  };
  
  home = {
    packages = with pkgs; [
      home-manager
      eza
      zellij
      gnumake

      tmux

      stow
      ripgrep

      helix
      neovim
      fastfetch
      btop

      volta

      # fonts
      cascadia-code
      nerd-fonts.jetbrains-mono
    ];

    # This needs to actually be set to your username
    username = "adeyahya";
    homeDirectory = "/home/adeyahya";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };
}
