# source aliasene
source ~/.config/fish/alias.fish

if test (uname) = Darwin
    eval (/opt/homebrew/bin/brew shellenv)
    source $HOME/.cargo/env.fish
end



function fish_greeting
    set_color blue
    echo "All the pieces matter"
end

# sette tmux
if not set -q TMUX
    # Create a new detached session named 'base' if it doesn't exist
    tmux new-session -d -s main
    # Attach to the 'base' session
    tmux attach-session -t main
end

#div settinggs
export EDITOR=nvim
fish_vi_key_bindings

# Sorted source commands 
starship init fish | source
zoxide init fish | source

# fzf testering  
fzf --fish | source
set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"



# Set Java 21 as default
fish_add_path /opt/homebrew/opt/openjdk@21/bin

set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk@21/include"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/martineldeknutsen/.ghcup/bin $PATH # ghcup-env
