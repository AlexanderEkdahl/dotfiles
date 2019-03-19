# dotfiles

My macOS setup.

**This setup is intended for macOS - Mojave.**

## Installation

1. Install [Homebrew](http://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git ~/dotfiles

1. Configure macOS with saner defaults and restart your system.

        sh ~/dotfiles/defaults

1. Configure bash

        brew install bash
        echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
        chsh -s /usr/local/bin/bash;
        brew install bash-completion@2
        echo 'source ~/dotfiles/bash_profile' > ~/.bash_profile

1. Symlink files

        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/gemrc ~/.gemrc

1. Install essential formulaes

        sh ~/dotfiles/brew

