# flake.nix
# Don't copy and paste this.  Read above first if you tried to cheat and skim.
{
  description = "My Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = { url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
    };

    nix-colors = {
      url = "github:misterio77/nix-colors";
    };

    xremap = {
      url = "github:xremap/nix-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, nix-colors, xremap, ... }:
    let
      username = "adeyahya";

      mkSystem = { system, hostname, extraModules ? [] }:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit username nix-colors;
          };

          modules = [
            xremap.nixosModules.default
            ./modules/base.nix
            ./hosts/${hostname}/configuration.nix

            home-manager.nixosModules.home-manager {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                extraSpecialArgs = { inherit username nix-colors; };
                users.${username} = import ./modules/home.nix;
              };
            }
          ] ++ extraModules;
        };
    in {
      nixosConfigurations = {
        desktop = mkSystem {
          system = "x86_64-linux";
          hostname = "desktop";
          extraModules = [
            nixos-hardware.nixosModules.common-cpu-amd
            ./hosts/desktop/desktop.nix
          ];
        };
      };
    };
}
