#!/usr/bin/sh

echo ""
echo "      ___       ___          ___          ___                   ___      "
echo "     /  /\     /__/\        /  /\        /  /\         ___     /  /\     "
echo "    /  /::\    \  \:\      /  /:/_      /  /:/_       /  /\   /  /::\    "
echo "   /  /:/\:\    \  \:\    /  /:/ /\    /  /:/ /\     /  /:/  /  /:/\:\   "
echo "  /  /:/~/:/_____\__\:\  /  /:/_/::\  /  /:/ /::\   /  /:/  /  /:/~/:/   "
echo " /__/:/ /://__/::::::::\/__/:/__\/\:\/__/:/ /:/\:\ /  /::\ /__/:/ /:/___ "
echo " \  \:\/:/ \  \:\~~\~~\/\  \:\ /~~/:/\  \:\/:/~/://__/:/\:\\  \:\/:::::/ "
echo "  \  \::/   \  \:\  ~~~  \  \:\  /:/  \  \::/ /:/ \__\/  \:\\  \::/~~~~  "
echo "   \  \:\    \  \:\       \  \:\/:/    \__\/ /:/       \  \:\\  \:\      "
echo "    \  \:\    \  \:\       \  \::/       /__/:/         \__\/ \  \:\     "
echo "     \__\/     \__\/        \__\/        \__\/                 \__\/     "
echo ""
echo "          Dotfiles (Pongstr v2.0.0) for setting up OSX Workspace.        "
echo "                https://github.com/pongstr/dotfiles.git                  "
echo "          =======================================================        "
echo ""
# Download and install dotfiles
curl -L -o dotfiles.zip https://github.com/pongstr/dotfiles/archive/v2.0.0-beta.zip && unzip dotfiles.zip
mkdir -p $HOME/Projects2/
mv dotfiles-v2.0.0-beta/* $HOME/Projects2/dotfiles
ln -s $HOME/Projects2/dotfiles $HOME/dotfiles

# Cleanup and run bootstrap.sh
rm -rf dotfiles-2.0.0-beta dotfiles.zip
rm -rf install-v2.sh && sh $HOME/dotfiles/bootstrap.sh