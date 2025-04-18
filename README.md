# NixOS Configuration

This repository contains my NixOS system configurations and dotfiles.

## Repository Structure

- `modules/` - NixOS modules for system configuration
  - `base.nix` - Base system configuration
  - `home.nix` - Home manager configuration
  - `shell.nix` - Shell configuration
  - `xremap.nix` - Keyboard remapping configuration
  - `README.md` - Documentation for module system
- `hosts/` - Host-specific configurations
  - `desktop/` - Desktop machine configuration
  - `README.md` - Documentation for host configurations
- `devshell/` - Development environment configuration
  - `devbox.json` - Development environment dependencies
  - `devbox.lock` - Locked dependencies
- `.vscode/` - VSCode workspace configuration
- `flake.nix` - Nix flake configuration
- `flake.lock` - Locked flake dependencies
- `Makefile` - Common commands and shortcuts

## Features

- **System Configuration**: Modular NixOS configuration system
- **Development Environment**: Managed development environment with devshell
- **IDE Integration**: VSCode workspace configuration
- **Host-Specific Configurations**: Separate configurations for different machines

## Usage

1. Clone this repository
2. Configure your host-specific settings in `hosts/`
3. Build and switch to the new configuration:
   ```bash
   sudo nixos-rebuild switch --flake .#<hostname>
   ```