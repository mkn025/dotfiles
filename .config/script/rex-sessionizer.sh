#!/usr/bin/env bash
# Script: tmux-sessionizer.sh
# Description: Fuzzy find and switch to project directories in tmux sessions
# Usage: tmux-sessionizer.sh [directory]

# If directory provided as argument, use it; otherwise fuzzy find from predefined paths
if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(find ~/Dev/ ~/Documents/projekter/ ~/Documents/typstFiler/ ~/Dev/UiB/stat110/  ~/Dev/UiB/ ~/Dev/UiB/inf226/ ~/Dev/UiB/inf221/semesterProjekt/ ~/Dev/UiB/inf214/ ~/Dev/UiB/inf221/ ~/skript/   ~ -mindepth 1 -maxdepth 1 -type d | fzf --tmux center,80%,border-native )
fi

# Exit if no directory was selected
if [[ -z $selected ]]; then
  exit 0
fi

selected_name=$(basename "$selected" | tr . _)

out=$(rex new $selected_name |  cut -d ':' -f 2)



rex run -s $selected_name --cwd $selected --label nvim --focus=false -- nvim 
rex run -s $selected_name --cwd $selected --label yazi --focus=false -- yazi 



