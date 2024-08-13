#!/usr/bin/env bash

###############################################################################
# PREVENT PEOPLE FROM SHOOTING THEMSELVES IN THE FOOT                         #
###############################################################################

starting_script=`basename "$0"`
if [ "$starting_script" != "freshinstall.sh" ]; then
	echo -e "\n\033[31m\aUhoh!\033[0m This script is part of freshinstall and should not be run by itself."
	echo -e "Please launch freshinstall itself using \033[1m./freshinstall.sh\033[0m"
	echo -e "\n\033[93mMy journey stops here (for now) … bye! 👋\033[0m\n"
	exit 1
fi;


###############################################################################
# Prerequisites                                                               #
###############################################################################

mkdir -p /usr/local/bin
sudo chown -R $(whoami) /usr/local/bin


# Important Apps upfront
# brew install --cask 1password
brew install --cask gh # GitHub CLI

###############################################################################
# Code Editors                                                                #
###############################################################################

brew install --cask visual-studio-code
# @note: Settings + Plugins via https://code.visualstudio.com/docs/editor/settings-sync



###############################################################################
# BROWSERS                                                                    #
###############################################################################

brew install --cask google-chrome


# brew install --cask microsoft-teams
# brew install --cask zoom

# brew install --cask tower


###############################################################################
# ALL DONE NOW!                                                               #
###############################################################################

echo -e "\n\033[93mSo, that should've installed all software for you …\033[0m"
echo -e "\n\033[93mYou'll have to install the following manually though:\033[0m"

echo "- Additional Tools for Xcode"
echo ""
echo "    Download from https://developer.apple.com/download/more/"
echo "    Mount the .dmg + install it from the Graphics subfolder"
echo ""
