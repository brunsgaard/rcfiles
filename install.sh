#!/bin/bash

DIR=`pwd`

echo Installing xinitrc and Xresources
ln -Tfs $DIR/xinitrc $HOME/.xinitrc
ln -Tfs $DIR/Xresources $HOME/.Xresources

echo Installing vim config...
ln -Tfs $DIR/vimrc $HOME/.vimrc
ln -Tfs $DIR/vim $HOME/.vim
mkdir -p /var/tmp/vim/{swap,undo}

echo Installing zsh config...
ln -Tfs $DIR/zshrc $HOME/.zshrc

echo Installing xmonad and xmobar config...
mkdir -p $HOME/.xmonad
ln -Tfs $DIR/xmobar.hs $HOME/.xmonad/xmobar.hs
ln -Tfs $DIR/xmonad.hs $HOME/.xmonad/xmonad.hs

echo Installing zsh config...
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
ln -Tfs $DIR/zshrc $HOME/.zshrc

echo Setting default shell to zsh...
chsh -s `which zsh`

echo Installing git config...
ln -Tfs $DIR/gitignore_global $HOME/.gitignore_global

echo Installing mutt config...
ln -Tfs $DIR/muttrc $HOME/.muttrc

