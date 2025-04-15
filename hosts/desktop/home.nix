{ lib, stable, pkgs, username, ... }:
{
  fonts.fontconfig.enable = true;

  programs.git = {
    enable = true;
    userEmail = "adeyahyaprasetyo@gmail.com";
    userName = "${username}";
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
    username = "${username}";
    homeDirectory = "/home/${username}";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };
}
