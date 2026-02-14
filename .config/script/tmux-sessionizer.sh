#!/usr/bin/env bash
# Script: tmux-sessionizer.sh
# Description: Fuzzy find and switch to project directories in tmux sessions
# Usage: tmux-sessionizer.sh [directory]

# If directory provided as argument, use it; otherwise fuzzy find from predefined paths
if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(find ~/Dev/ ~/Documents/projekter/ ~/Documents/typstFiler/ ~/Dev/UiB/ ~/Dev/UiB/inf112/ ~/Dev/UiB/exPhil/ ~/Dev/UiB/inf221/ ~/skript/   ~/Dev/UiB/inf222/ ~/Dev/UiB/inf222/forelesning_13_jan/ ~ -mindepth 1 -maxdepth 1 -type d | fzf --tmux center,80%,border-native)
fi

# Exit if no directory was selected
if [[ -z $selected ]]; then
  exit 0
fi

# Create a session name from the directory basename (replace dots with underscores)
selected_name=$(basename "$selected" | tr . _)
# Check if tmux is already running
tmux_running=$(pgrep tmux)

# If not in tmux and tmux is not running, start a new session
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s $selected_name -c $selected
  exit 0
fi

# Create a new detached session if it doesn't exist
if ! tmux has-session -t=$selected_name 2>/dev/null; then
  tmux new-session -ds $selected_name -c $selected
fi

# Attach or switch to the session depending on whether we're already in tmux
if [[ -z $TMUX ]]; then
  tmux attach -t $selected_name
else
  tmux switch-client -t $selected_name
fi
