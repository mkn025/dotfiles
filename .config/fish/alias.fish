

# mac spesfikke alias
if test (uname) = Darwin
    alias up "brew update && brew upgrade"
    alias bs "brew search"
    alias bi "bash ~/skript/list_brew_with_info.sh"

    # quicknotes aliases
    alias qn "bash ~/skript/list_qn.sh"
    alias nqn "bash ~/skript/make_new_qn.sh"
    alias cd_qn "cd ~/Documents/ObsidianFiles/Main/quicknotes/"

    alias pdf "sioyek --nofocus"

end




alias nf "source ~/.config/fish/config.fish"
alias pubip "curl -s https://api.ipify.org"
alias c clear
alias cat "bat --theme='OneHalfDark' "
alias f 'cd $(find . -type d -print | fzf)'
alias ff fastfetch
alias ffc "fastfetch -c none"
alias home "cd ~"
alias h "cd ~"
alias purevim vim
alias clac "bc -l"
alias visWatt "ioreg -r -c AppleSmartBattery | grep Watts"
alias tailscale "/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias v nvim
alias vim nvim
alias :e "nvim ."
alias y yazi
alias t "tmux new -s main"
alias tk "tmux kill-session"



# fzf commands
alias ft "fzf --preview 'bat --color=always --theme=OneHalfDark --style=numbers --line-range=:500 {}'"
alias f "fzf --preview 'bat --color=always --theme=OneHalfDark --style=numbers --line-range=:500 {}' | xargs nvim"
alias fzfj "fzf --preview 'cd $(dirname {}) && ls -la'"
alias fzf2 "fzf --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}' | xargs nvim"

# config files
alias fishy "nvim ~/.config/fish/config.fish"
alias aliass "nvim ~/.config/fish/alias.fish"

alias ghs "vim ~/.config/ghostty/config"
alias ala "nvim ~/.config/alacritty/alacritty.toml"
alias tc "nvim ~/.tmux.conf"
alias vimc "nvim ~/.config/nvim/init.lua"

## random skripts
alias ws "bash ~/skript/websiteSkript.sh"

# eza
alias l "eza --icons "
alias l1 "eza -1 --icons "
alias ls "eza --icons --sort=date "
alias lst "eza -l --icons --sort=type"

# tmux files 
alias tmuxinit "bash ~/.config/script/tmux-sessionizer.sh"
alias ti "bash ~/.config/script/tmux-sessionizer.sh"
alias tm "bash ~/.config/script/create-main.sh"

