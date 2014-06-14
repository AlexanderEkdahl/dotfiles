#dotfiles

My OS X setup. Special thanks to whoever I stole it from.

**This setup is intended for Mac OSX - Mavericks.**

##Installation

1. Install Command Line Tools for XCode

        xcode-select --install

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git

1. Install [Homebrew](http://mxcl.github.com/homebrew/)

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

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
