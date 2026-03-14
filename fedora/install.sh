#!/bin/bash

set -e # Exit on any error

DOTFILES_DIR="$HOME/git/dotfiles"

echo "==> Installing packages..."
sudo dnf install -y zsh git stow git-delta nvim

echo "==> Installing dotfiles..."
stow --target="$HOME" --dir="$DOTFILES_DIR/fedora" --ignore="install.sh" .

echo "==> Changing default shell to zsh..."
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
fi

# echo "==> Installing Oh My Zsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
#
# ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
#
# echo "==> Installing Powerlevel10k..."
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
#
# echo "==> Installing zsh-syntax-highlighting..."
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
#
# echo "==> Installing zsh-autosuggestions..."
# git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

echo "==> Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

echo "==> Installing Cargo packages"
cargo install eza

echo "==> Done! Restart your terminal (or log out and back in) for the shell change to take effect."
