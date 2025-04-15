{ config, pkgs, username, ... }:

{
  programs.fish = {
    enable = true;
  };

  users.users.adeyahya = {
    isNormalUser = true;
    description = "adeyahya";
    extraGroups = [ "networkmanager" "wheel" "kvm" "libvirtd" "docker"];
  };

  environment.systemPackages = with pkgs; [
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fzf
    starship  # Nice prompt for Fish
  ];
}
