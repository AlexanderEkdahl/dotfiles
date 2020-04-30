# dotfiles

My macOS setup.

**This setup is intended for macOS - Catalina.**

## Installation

1. Install [Homebrew](https://mxcl.github.com/homebrew/) and Command Line Tools for XCode

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git ~/dotfiles

1. Configure macOS with saner defaults and restart your system.

        sh ~/dotfiles/defaults

1. Symlink files

        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
        ln -sf ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

1. Install essential formulaes

        sh ~/dotfiles/brew

1. Remove macOS keybinding for <code>⌘+`</code> and map to <code>ctrl</code>

1. Install Visual Studio Code packages

        code --install-extension arcticicestudio.nord-visual-studio-code
        code --install-extension ms-vscode-remote.remote-ssh

1. Set-up SSH keys
