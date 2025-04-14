. /home/adeyahya/.nix-profile/etc/profile.d/nix.fish
source "$HOME/.cargo/env.fish"
set -U fish_user_paths /home/adeyahya/.volta/bin $fish_user_paths

if status is-interactive
    # Commands to run in interactive sessions can go here
end
