#!/bin/bash
# ParrotOS VirtualBox setup script
# This script is idempotent - safe to run multiple times

set -e

PLANQ_DIR="$HOME/planq"

# --- Clone/update planq repo ---
mkdir -p "$HOME"
if [[ -d "$PLANQ_DIR" ]]; then
  echo "Updating planq repo..."
  cd "$PLANQ_DIR"
  git pull
else
  echo "Cloning planq repo..."
  git clone https://github.com/tihomir-kit/planq "$PLANQ_DIR"
fi

# --- Append planq .bashrc to ~/.bashrc if not already there ---
if ! grep -q "# Planq additions" ~/.bashrc; then
  echo "" >> ~/.bashrc
  echo "# Planq additions to .bashrc" >> ~/.bashrc
  echo "source $PLANQ_DIR/.bashrc" >> ~/.bashrc
  echo "Planq .bashrc sourced in ~/.bashrc"
else
  echo "Planq .bashrc already sourced"
fi

# --- Make planq scripts executable ---
for file in "$PLANQ_DIR/scripts/"*; do
  if [[ -f "$file" ]]; then
    chmod +x "$file"
  fi
done

# --- Make planq memos executable ---
for file in "$PLANQ_DIR/memos/"*; do
  if [[ -f "$file" ]]; then
    chmod +x "$file"
  fi
done

# --- Install fzf from source if not already installed ---
if [[ ! -d "$HOME/.fzf" ]]; then
  echo "Installing fzf from source..."
  git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
  echo "y" | "$HOME/.fzf/install"
else
  echo "fzf already installed, updating..."
  cd "$HOME/.fzf"
  git pull
  echo "y" | "$HOME/.fzf/install"
fi

# --- Set default file types to open with VS Code ---
xdg-mime default codium.desktop application/octet-stream # files with no extension
xdg-mime default codium.desktop text/plain
xdg-mime default codium.desktop application/x-shellscript
xdg-mime default codium.desktop text/x-csharp
xdg-mime default codium.desktop text/x-c
xdg-mime default codium.desktop text/x-python
xdg-mime default codium.desktop application/javascript
xdg-mime default codium.desktop text/typescript
xdg-mime default codium.desktop text/html
xdg-mime default codium.desktop text/css
xdg-mime default codium.desktop application/x-ruby
xdg-mime default codium.desktop application/x-perl
xdg-mime default codium.desktop application/x-php

# --- Install tools ---
echo "Installing tools..."
"$PLANQ_DIR/scripts/px-install-tools"

# --- Download binary tools ---
echo "Downloading binary tools..."
"$PLANQ_DIR/scripts/px-download-bin-tools"

echo ""
echo "=== Setup complete! ==="
echo "Run 'source ~/.bashrc' or open a new terminal to apply changes."