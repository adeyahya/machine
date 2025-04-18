# Host Configurations

This directory contains host-specific NixOS configurations.

## Directory Structure

- `desktop/` - Desktop machine configuration
  - Contains specific configuration for the desktop machine

## Usage

Each host directory should contain:
- `configuration.nix` - Main system configuration
- `hardware.nix` - Hardware-specific configuration
- `README.md` - Documentation specific to this host

## Adding a New Host

1. Create a new directory for the host
2. Copy the necessary configuration files
3. Customize the configuration for the specific host
4. Add documentation in the host's README.md 