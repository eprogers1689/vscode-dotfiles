# vscode-dotfiles

## About
These are dotfiles that approximate my vim/tmux key bindings. Fork and enjoy.

## Installation
1. Read through the install script `./install.sh`
1. Install vscodevim - https://marketplace.visualstudio.com/items?itemName=vscodevim.vim
1. Run `bash ./install.sh`

## Uninstallation
1. Go to your settings/keybindings`
    * Linux: `cd ~/.config/Code/User`
    * MacOS: `cd ~/Library/Application \Support/Code/User`
1. Remove this repo's settings/keybindings:
    * `rm settings.json`
    * `rm keybindings.json`
1. Restore your old settings/keybindings:
    * `mv settings.json.old settings.json`
    * `mv keybindings.json.old keybindings.json`
1. Restart vscode

