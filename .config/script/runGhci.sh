#!/usr/bin/env bash
# Script: runGhci.sh
# Description: Creates a new file and opens it in GHCi (Haskell REPL)
# Usage: runGhci.sh <filename>



# Create the file if it doesn't exist and open it in GHCi
touch $1 && ghci $1
