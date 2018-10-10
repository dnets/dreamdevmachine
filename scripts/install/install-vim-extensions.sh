#!/bin/bash
#
vimfolder=~/.vim
install_vim_extensions() {
    # Create vimrc
    create_symlink vimrc
    echo "Installing Vundle..."
    # Install Vundle
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    # Install Monokai colors
    echo "Installing Molokai colorcheme..."
    mkdir -pv $vimfolder/colors/
    cp -r $DIR/vim/molokai.vim $vimfolder/colors/
    # Install registered Vundle plugins
    echo "Installing Plugins"
    vim +PluginInstall +qall
}