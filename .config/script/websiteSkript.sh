#!/bin/bash

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

selected=$(printf "%s\n" "${nettsider[@]}" | fzf --tmux center,50%,border-native)

open $selected
