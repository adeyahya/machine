# NixOS Modules

This directory contains reusable NixOS modules for system configuration.

## Directory Structure

- `desktop/` - Desktop environment related modules
  - `desktop.nix` - Main desktop environment configuration
- `system/` - System-level configuration modules
  - `base.nix` - Base system configuration
- `services/` - Service-specific modules
  - (Add service-specific configurations here)

## Usage

These modules are imported in host configurations to provide specific functionality.
Each module should be self-contained and focused on a specific aspect of the system.
