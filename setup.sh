#!/usr/bin/env bash

sudo apt install -y zsh htop neofetch vim git build-essential

bash ohmyzsh-install.sh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

cp ./.zshrc ~/.zshrc

cp ./.vimrc ~

cp ./.vim ~ -r

# Create ssh key
ssh-keygen -t rsa

