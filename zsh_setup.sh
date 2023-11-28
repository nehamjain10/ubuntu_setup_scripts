#!/bin/bash

# Install Zsh
sudo apt update
sudo apt install zsh

# Set Zsh as the default shell
chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Add zsh-autosuggestions and zsh-syntax-highlighting to the plugins list in the Zsh configuration
sed -i 's/plugins=(/plugins=(zsh-autosuggestions zsh-syntax-highlighting /' ~/.zshrc

# Source the updated Zsh configuration
source ~/.zshrc

echo "Zsh setup complete with Oh My Zsh, zsh-autosuggestions, and zsh-syntax-highlighting."
conda init zsh
