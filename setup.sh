#!/bin/bash
cd "$(dirname $0)"
CWD="$(pwd)"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

gpg --keyserver hkp://keys.gnupg.net \
    --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

brew install $(cat brew_requirements)
brew cask install $(cat brew_cask_requirements)

ln -sf $CWD/profile $HOME/.profile
source $HOME/.profile

ln -sf $CWD/vimrc $HOME/.vimrc
ln -sf $CWD/gitconfig $HOME/.gitconfig

git submodule update --init
ln -sf $CWD/vim/bundle/Vundle.vim $HOME/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
vim +PluginClean! +qall
