# dotfiles

My macOS setup.

**This setup is intended for macOS - Big Sur.**

## Installation

1. Install [Homebrew](https://brew.sh/) and Command Line Tools for XCode

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        brew doctor

1. Clone this repository into your home folder

        git clone https://github.com/AlexanderEkdahl/dotfiles.git ~/dotfiles

1. Configure macOS with saner defaults and restart your system.

        sh ~/dotfiles/defaults

1. Install and configure `bash`.

        brew install bash
        sudo echo /usr/local/bin/bash >> /etc/shells
        chsh -s /usr/local/bin/bash # Must logout/login for changes to take effect

1. Symlink files

        ln -sf ~/dotfiles/gitconfig ~/.gitconfig
        ln -sf ~/dotfiles/bash_profile ~/.bash_profile

1. Install essential formulaes

        sh ~/dotfiles/brew

1. Remove macOS keybinding for <code>⌘+`</code> and map to <code>ctrl</code>

1. [Generate and configure SSH keys](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

1. Configure [Visual Studio Code Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync)

1. Configure Tailscale
