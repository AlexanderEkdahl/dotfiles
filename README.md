#dotfiles

My OS X setup. Special thanks to whoever I stole it from.

**This setup is intended for Mac OSX - Yosemite.**

##Installation

1. Install [Homebrew](http://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git && cd dotfiles/

1. Configure OS X with sane defaults and restart your system.

        sh defaults

1. Symlink files

        ln -sf ~/dotfiles/bash_profile ~/.bash_profile
        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/gemrc ~/.gemrc

1. Install essential formulaes

        sh brew

1. Install Atom Editor packages

        apm stars --user AlexanderEkdahl --install

1. Symling Atom configuration

        ln -sf ~/dotfiles/atom/config.cson ~/.atom/config.cson
        ln -sf ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
        ln -sf ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
        ln -sf ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
        ln -sf ~/dotfiles/atom/styles.less ~/.atom/styles.less
