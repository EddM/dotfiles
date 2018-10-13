# Edd's dotfiles + new machine bootstrap

To set up workstation (macOS):

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install python
    pip install -U cider
    git clone git@github.com:EddM/dotfiles.git ~/.cider
    cider restore
