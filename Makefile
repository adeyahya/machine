# Careful about copy/pasting, Makefiles want tabs!
# But you're not copy/pasting, are you?
.PHONY: update
desktop:
	sudo nixos-rebuild switch --flake .#desktop
clean:
	nix-collect-garbage -d
clean-all:
	sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot
restow:
	stow dotfiles
