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
echo "          .......................................................        "
echo ""

# Set Projects Directory here
PROJECTSDIR="$HOME/Projects2"

# Set Dotfiles version here
DOTFILE="v2.0.0-beta"

# Download and install dotfiles
curl -L -o dotfiles.zip "https://github.com/pongstr/dotfiles/archive/$DOTFILE.zip" && unzip dotfiles.zip

# Create Projects Directory
mkdir -p $PROJECTSDIR

# Move unzipped files to $PROJECTSDIR
mv dotfiles-v2.0.0-beta $PROJECTSDIR/dotfiles

# Create dotfiles alias to Home folder for easier access
ln -s $PROJECTSDIR/dotfiles $HOME/dotfiles

# Cleanup and run bootstrap.sh
rm -rf dotfiles-2.0.0-beta dotfiles.zip
rm -rf install-v2.sh && sh $PROJECTSDIR/dotfiles/bootstrap.sh