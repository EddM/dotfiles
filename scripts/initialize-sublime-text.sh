#!/usr/bin/env bash

# On original (master) machine:
#
# cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
# mkdir ~/Dropbox/Misc/Sublime\ Text\ 3/
# mv User ~/Dropbox/Misc/Sublime\ Text\ 3/
# ln -s ~/Dropbox/Misc/Sublime\ Text\ 3/User

subl
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Misc/Sublime\ Text\ 3/User

echo ""
echo "  Don't forget to install Package Control in ST!"
echo "  https://packagecontrol.io"
echo ""
open https://packagecontrol.io
