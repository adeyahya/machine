{ config, pkgs, ... }:

{
  # File system configurations
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/254fe29a-9efa-4dc3-bd6a-1142b8c33a0c";
      fsType = "ext4";
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/E8D7-D04F";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

    "/home" = {
      device = "/dev/disk/by-uuid/4c9b226a-b0ed-455f-acb4-636b10ee536f";
      fsType = "ext4";
    };

    "/run/media/adeyahya/B8288F68288F250A" = {
      device = "/dev/disk/by-uuid/B8288F68288F250A";
      fsType = "ntfs";
      options = ["defaults" "nofail"];
    };
  };

  # Docker storage configuration
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    package = pkgs.docker_28;
    extraOptions = "--data-root /home/docker";
  };

  # No swap devices configured
  swapDevices = [ ];
} 
