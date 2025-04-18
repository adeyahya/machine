set fish_greeting
starship init fish | source
pokemon-colorscripts -r

# paths
fish_add_path /home/adeyahya/.volta/bin

# aliases
alias z zellij
alias neofetch fastfetch

if status is-interactive
    # Commands to run in interactive sessions can go here
end
