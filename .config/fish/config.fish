
source ~/.config/fish/alias.fish
eval (/opt/homebrew/bin/brew shellenv)

# sette tmux
function fish_greeting
    set_color blue
    echo "Welcome back Nitram"
end

export EDITOR=nvim


# Sorted source commands
source $HOME/.cargo/env.fish
starship init fish | source
thefuck --alias | source
zoxide init fish | source
fish_vi_key_bindings

# fzf testering 
fzf --fish | source
set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# Add OpenJDK 17 binaries to the PATH for easy access
#fish_add_path /opt/homebrew/opt/openjdk@17/bin

# Set C preprocessor flags to include OpenJDK 17 headers
#set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk@17/include"

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /Users/martineldeknutsen/.ghcup/bin $PATH # ghcup-env
