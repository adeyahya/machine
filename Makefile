# Careful about copy/pasting, Makefiles want tabs!
# But you're not copy/pasting, are you?
.PHONY: update
update:
	home-manager switch --flake .#home
desktop:
	sudo nixos-rebuild switch --flake .#desktop
clean:
	nix-collect-garbage -d
