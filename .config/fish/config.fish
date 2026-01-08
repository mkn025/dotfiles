# source aliasene
source ~/.config/fish/alias.fish

eval (/opt/homebrew/bin/brew shellenv)

# sette tmux
function fish_greeting
    set_color blue
    echo "All the pieces matter"
end


# div settinggs
export EDITOR=nvim
fish_vi_key_bindings

# Sorted source commands 
source $HOME/.cargo/env.fish
starship init fish | source
thefuck --alias | source
zoxide init fish | source

# fzf testering  
fzf --fish | source
set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /Users/martineldeknutsen/.ghcup/bin $PATH # ghcup-env
