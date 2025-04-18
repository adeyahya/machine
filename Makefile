# Careful about copy/pasting, Makefiles want tabs!
# But you're not copy/pasting, are you?
.PHONY: update
desktop:
	sudo nixos-rebuild switch --flake .#desktop
clean:
	nix-collect-garbage -d
restow:
	stow dotfiles
