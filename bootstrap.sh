#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

if ! command -v stow &>/dev/null; then
  echo "Error: GNU Stow is required. Install it first."
  echo "  sudo pacman -S stow   # Arch/CachyOS"
  echo "  sudo apt install stow # Debian/Ubuntu"
  echo "  brew install stow     # macOS"
  exit 1
fi

cd "$DOTFILES"

echo "Stowing dotfiles..."
stow --no-folding -t "$HOME" zsh git alacritty gtk npm fonts tmux

echo "Done! Dotfiles are now symlinked into $HOME"
