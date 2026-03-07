#!/usr/bin/env bash



selected_name="spotify-session"
selected=~

tmux_running=$(pgrep tmux)

# If not in tmux and tmux is not running, start a new session
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s $selected_name 'spotify_player' -c  $selected
  exit 0
fi


# Create a new detached session if it doesn't exist
if ! tmux has-session -t=$selected_name 2>/dev/null; then
  tmux new-session -ds $selected_name 'spotify_player' -c $selected  
fi

# Attach or switch to the session depending on whether we're already in tmux
if [[ -z $TMUX ]]; then
  tmux attach -t $selected_name
else
  tmux switch-client -t $selected_name
fi




