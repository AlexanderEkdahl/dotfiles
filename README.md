#dotfiles

My OS X setup. Special thanks to whoever I stole it from.

**This setup is intended for Mac OSX - Yosemite.**

##Installation

1. Install [Homebrew](http://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git && cd dotfiles/

1. Configure OS X with sane defaults and restart your system.

        sh defaults

1. Symlink dotfiles

        ln -sf ~/dotfiles/bash_profile ~/.bash_profile
        ln -sf ~/dotfiles/gitconfig ~/.gitconfig

1. Install essential formulaes

        sh brew

1. Install Atom Editor packages

        apm stars --user AlexanderEkdahl --install

1. Install Heroku standalone

	      wget -qO- https://toolbelt.heroku.com/install.sh | sh
