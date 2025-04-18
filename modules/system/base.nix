{ config, pkgs, username, ... }:

{
  programs.fish = {
    enable = true;
  };

  users.defaultUserShell = pkgs.fish;
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
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
