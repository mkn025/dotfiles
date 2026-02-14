#!/bin/bash
# Script: websiteSkript.sh
# Description: Fuzzy find and open frequently visited websites
# Usage: websiteSkript.sh

# Array of frequently visited websites
nettsider=(
  "https://www.youtube.com/watch?v=74cOUSKXMz0"
  "https://go.dev/doc/"
  "https://typst.app/docs/"
  "https://typst.app/docs/reference/math/"
  "https://mitt.uib.no/"
  "https://mail.google.com/"
  "https://hoogle.haskell.org/"
  "https://aistudio.google.com/prompts/new_chat"
)

# Use fzf to select a website from the list
selected=$(printf "%s\n" "${nettsider[@]}" | fzf --tmux center,50%,border-native)

# Open the selected website in the default browser
open $selected
