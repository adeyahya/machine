{ config, lib, pkgs, username, ... }:

{
  environment.systemPackages = with pkgs; [
    vscode
    gnome-tweaks
    spotify
    brave
    alacritty
    kitty
  ];
}
