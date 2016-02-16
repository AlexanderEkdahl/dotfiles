#dotfiles

My OS X setup. Special thanks to whoever I stole it from.

**This setup is intended for Mac OSX - El Capitan.**

##Installation

1. Install [Homebrew](http://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git && cd dotfiles/

1. Configure OS X with saner defaults and restart your system.

        sh defaults

1. Symlink files

        ln -sf ~/dotfiles/bash_profile ~/.bash_profile
        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/gemrc ~/.gemrc

1. Install essential formulaes

        sh brew

1. Install Atom Editor packages

        apm stars --user AlexanderEkdahl --install

1. Symlink Atom configuration

        ln -sf ~/dotfiles/atom/config.cson ~/.atom/config.cson
        ln -sf ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
        ln -sf ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
        ln -sf ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
        ln -sf ~/dotfiles/atom/styles.less ~/.atom/styles.less

1. Setup Annex

        git clone git@github.com:AlexanderEkdahl/annex.git ~/annex && cd ~/annex
        git annex init "air"
        # Retrieve & store AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in .envrc
        git annex enableremote s3
