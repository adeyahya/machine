# paths
fish_add_path /home/adeyahya/.volta/bin

# aliases
alias z zellij
alias neofetch fastfetch
alias hx helix

# vars
set -gx EDITOR helix

# hooks
eval (rbenv init - | source)

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    starship init fish | source
    pokemon-colorscripts -r --no-title
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
