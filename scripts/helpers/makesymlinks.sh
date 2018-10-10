#!/bin/bash
############################
# makesymlinks.sh
############################

# dotfiles directory

# old dotfiles backup directory
backup_dir=~/dotfiles_backup

create_symlink() {
  # Move any existing dotfiles in to $olddir
  # then create symlinks
  mkdir -pv $backup_dir
    if [ -f ~/.$1 ]
    then
      echo "Backing up ~/.$1 to $backup_dir..."
      mv --verbose ~/.$1 $backup_dir/.$1.bak
    fi
    echo "Creating $1 symlink $HOME/.$1 directory."
    ln -snf $DIR/dotfiles/$1 ~/.$1
}