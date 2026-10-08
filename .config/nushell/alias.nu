# Nushell alias definitions
alias vim = nvim



alias tk   = tmux kill-server
alias y    = yazi
alias :e   = nvim .
alias icat = kitten icat
alias cat = bat
alias vim = nvim
alias home = cd ~

let dww = ls -l ~/Downloads/ --full-paths  | sort-by created --reverse | take 1 | get name | get 0


def søk [args] {
  ^fd $args | lines

}








