{ config, pkgs, username, ... }:

{
  imports = [
    ./shell.nix
  ];

  users.defaultUserShell = pkgs.fish;
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" "kvm" "libvirtd" "docker"];
  };
}
