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
echo "        ..........................................................       "
echo "        . Dotfiles (Pongstr v2.0.0) for setting up OSX Workspace .       "
echo "        .      https://github.com/pongstr/dotfiles.git           .       "
echo "        ..........................................................       "
echo ""

# Set Projects Directory here
PROJECTSDIR="$HOME/Projects"

# Set Dotfiles version here
ARCHIVE="v2.0.0-beta.2"

# Download and install dotfiles
curl -L -o dotfiles.zip "https://github.com/pongstr/dotfiles/archive/$ARCHIVE.zip" && unzip dotfiles.zip

# Create Projects Directory
mkdir -p "$PROJECTSDIR"

# Move unzipped files to $PROJECTSDIR
mv "dotfiles-$ARCHIVE" "$PROJECTSDIR/dotfiles"

# Create dotfiles alias to Home folder for easier access
ln -s "$PROJECTSDIR/dotfiles" "$HOME/dotfiles"

# Cleanup and run bootstrap.sh
rm -rf "dotfiles-$ARCHIVE" "dotfiles.zip"
rm -rf install-v2.sh && sh $PROJECTSDIR/dotfiles/bootstrap.sh
