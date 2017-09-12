# dotfiles

My macOS setup. 

**This setup is intended for Mac OSX - El Sierra.**

## Installation

1. Install [Homebrew](http://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git ~/dotfiles && cd ~/dotfiles

1. Configure macOS with saner defaults and restart your system.

        sh defaults

1. Symlink files

        ln -sf ~/dotfiles/bash_profile ~/.bash_profile
        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/gemrc ~/.gemrc

1. Install essential formulaes

        sh brew

