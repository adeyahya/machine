{ config, pkgs, username, ... }:

{
  # Enable xremap for key remapping
  services.xremap = {
    enable = true;
    serviceMode = "user";  # Run as user service
    withGnome = true;     # Enable GNOME support
    userName = "${username}"; # Specify the user to run the service
    config = {
      modmap = [
        {
          name = "CapsLock to Escape";
          remap = {
            CapsLock = "Esc";
          };
        }
      ];
    };
  };
} 