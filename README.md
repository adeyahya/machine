# NixOS Configuration

This repository contains my NixOS system configurations and dotfiles.

## Repository Structure

- `modules/` - NixOS modules for system configuration
  - `system/` - System-level configuration modules
    - `base.nix` - Base system configuration
  - `desktop/` - Desktop environment modules
    - `desktop.nix` - Desktop environment configuration
  - `services/` - Service-specific modules
    - `xremap.nix` - Key remapping configuration (Caps Lock → Escape)
- `hosts/` - Host-specific configurations
  - `desktop/` - Desktop machine configuration
- `devshell/` - Development environment configuration
- `flake.nix` - Nix flake configuration
- `Makefile` - Common commands and shortcuts

## Features

- **Key Remapping**: Caps Lock is remapped to Escape using xremap
- **Desktop Environment**: GNOME desktop environment
- **Development Tools**: Various development tools and configurations
- **Gaming Support**: Steam and gaming-related configurations

## Usage

1. Clone this repository
2. Configure your host-specific settings in `hosts/`
3. Build and switch to the new configuration:
   ```bash
   sudo nixos-rebuild switch --flake .#<hostname>
   ```

## Development

To enter the development shell:
```bash
nix develop
```

## License

MIT 