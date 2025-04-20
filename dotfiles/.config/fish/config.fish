# paths
fish_add_path /home/adeyahya/.volta/bin

# aliases
alias z zellij
alias neofetch fastfetch
alias hx helix

# vars
set -gx EDITOR helix

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    starship init fish | source
    pokemon-colorscripts -r
end
