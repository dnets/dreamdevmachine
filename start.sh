#!/bin/bash
#
# dreamdevmachine by Dmitry nets (dmitrytnets@gmail.com)

# Full path of the current script
THIS=`readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0`

# The directory where current script resides
DIR=`dirname "${THIS}"`

# 'Dot' means 'source', i.e. 'include':
. "$DIR/scripts/install/install-bash-it.sh"
. "$DIR/scripts/install/install-oh-my-zsh.sh"
. "$DIR/scripts/install/install-vim-extensions.sh"
. "$DIR/scripts/helpers/confirm.sh"
. "$DIR/scripts/helpers/makesymlinks.sh"
. "$DIR/scripts/helpers/pkg_install.sh"

# INTRO
clear
echo "       __                              __                               __    _          ";
echo "  ____/ /_______  ____ _____ ___  ____/ /__ _   ______ ___  ____ ______/ /_  (_)___  ___ ";
echo " / __  / ___/ _ \/ __ \`/ __ \`__ \/ __  / _ \ | / / __ \`__ \/ __ \`/ ___/ __ \/ / __ \/ _ \ ";
echo "/ /_/ / /  /  __/ /_/ / / / / / / /_/ /  __/ |/ / / / / / / /_/ / /__/ / / / / / / /  __/";
echo "\__,_/_/   \___/\__,_/_/ /_/ /_/\__,_/\___/|___/_/ /_/ /_/\__,_/\___/_/ /_/_/_/ /_/\___/ ";
echo "                                                                                         ";
echo "                                        - THE Ultimate Opinionated Developer Machine     ";
echo "                                                                                         ";
echo "     by Dmitry Nets (dmitrynets at gmail.com)                                            ";
echo "                                                                                         ";
echo "                                                                                         ";
echo "                                                                                         ";
echo "                                                                                         ";
read -n 1 -s -r -p "                                       Press any key..."
clear


# INSTALL
# Bash
clear
echo "                               ";
echo "  ______               ______  ";
echo "  ___  /_______ __________  /_ ";
echo " __  __ \  __ \`/_  ___/_  __ \\";
echo " _  /_/ / /_/ /_(__  )_  / / /";
echo " /_.___/\__,_/ /____/ /_/ /_/ ";
echo "                           ";

confirm "Install BASH?" && pkg_install bash
confirm_yes "Install BASH extensions (Bash-It)?" && install_bash_it
confirm "Make BASH default shell?" && sudo chsh -s $(which bash) $(whoami)
read -n 1 -s -r -p "Press any key..."

# ZSH
clear
echo "            ";
echo "          / ";
echo " __, (   /_ ";
echo " _/_/_)_/ /_";
echo " /_         ";
echo "            ";

confirm_yes "Install ZSH?" && pkg_install zsh
confirm_yes "Install ZSH extensions (oh-my-zsh)? " && install_oh_my_zsh
confirm_yes "Make ZSH default shell?" && sudo chsh -s $(which zsh) $(whoami)
read -n 1 -s -r -p "Press any key..."

# Vim
clear
echo "                 ";
echo "  ____ ____ ____ ";
echo " ||v |||i |||m ||";
echo " ||__|||__|||__||";
echo " |/__\|/__\|/__\|";
echo "                 ";

confirm_yes "Install VIM? " && pkg_install vim
confirm_yes "Install VIM extensions? " && install_vim_extensions
read -n 1 -s -r -p "Press any key..."

clear
echo "_________ .__                   .___________ ";
echo "\_   ___ \|  |   ____  __ __  __| _/   __   \\";
echo "/    \  \/|  |  /  _ \|  |  \/ __ |\____    /";
echo "\     \___|  |_(  <_> )  |  / /_/ |   /    / ";
echo " \______  /____/\____/|____/\____ |  /____/  ";
echo "        \/                       \/          ";
confirm_yes "Copy AWS Cloud9 configs?" && install_c9
read -n 1 -s -r -p "Press any key..."


# Exit
clear
echo "All done. Happy coding!";