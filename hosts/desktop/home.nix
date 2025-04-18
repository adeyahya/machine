{ lib, stable, pkgs, username, config, ... }:
{
  fonts.fontconfig.enable = true;

  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;
    };
  };

  programs.git = {
    enable = true;
    userEmail = "adeyahyaprasetyo@gmail.com";
    userName = "${username}";

    includes = [
      {
        condition = "gitdir:~/works/";
        contents = {
          user = {
            email = "ade.prasetyo@jitera.com";
            name = "adejit";
          };
        };
      }
    ];

    ignores = [
      ".devbox"
      ".devbox_conf"
      ".gem"
      "devbox.json"
      "devbox.lock"
    ];
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
      lazydocker

      devbox

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
