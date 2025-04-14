{ lib, stable, pkgs, ... }:
let
  username = "adeyahya";
in {
  fonts.fontconfig.enable = true;
  
  home = {
    packages = with pkgs; [
      home-manager
      eza
      zellij

      fish
      tmux
      nushell

      tuckr
      ripgrep

      helix
      neovim
      fastfetch
      btop
      bitwarden-desktop

      volta

      podman
      podman-compose
      podman-desktop

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
