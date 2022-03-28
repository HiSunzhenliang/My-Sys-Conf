#!/usr/bin/env bash


# Install zsh && ohmyzsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Install Python3
sudo apt-get install -y python-dev python-pip python3-dev
sudo apt-get install -y python3-setuptools

# Install neovim
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install -y neovim

# Install SpcaceVim in nvim
# curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install neovim
# git clone https://github.com/HiSunzhenliang/my-spacevim-conf.git ~/.SpcaceVim.d

# Sys
cat ./alias >> ~/.zshrc

cat ./zshrc >> ~/.zshrc

# Create ssh key
ssh-keygen -t rsa
