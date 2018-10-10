#!/bin/bash
omzfolder=~/.oh-my-zsh

install_oh_my_zsh() {
    echo "Installing oh-my-zsh into $omzfolder ..."
    git clone https://github.com/robbyrussell/oh-my-zsh $omzfolder
    echo "Installing Arcadia theme..."
    cp -r $DIR/zsh/arcadia.zsh-theme $omzfolder/custom/themes/
    create_symlink zshrc
}