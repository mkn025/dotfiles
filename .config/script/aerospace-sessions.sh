aerospace list-windows --all | fzf --tmux 80% --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
