#!/bin/bash
#
bash_it_folder=~/.bash_it
bash_it_themes_folder=~/.bash_it/themes
install_bash_it() {
    create_symlink bashrc
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    /bin/bash ~/.bash_it/install.sh --no-modify-config
    mkdir $bash_it_themes_folder/dreamdevmachine && 
    cp -r $DIR/bash/dreamdevmachine-theme/* $bash_it_themes_folder/dreamdevmachine
}