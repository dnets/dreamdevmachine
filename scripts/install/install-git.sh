#!/bin/bash
#
install_git() {
    # Create vimrc
    echo "Enter your name (e.g John Doe):"
    read user_name
    git config --global user.name "$user_name"
    
    echo "Enter your email (e.g jdoe@gmail.com):"
    read user_email
    git config --global user.email "$user_email"
}