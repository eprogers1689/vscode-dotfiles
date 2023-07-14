# vscode-dotfiles

## About
These are dotfiles that approximate my vim/tmux key bindings. Fork and enjoy.

## Installation
1. Read through the install script `./install.sh`
1. Install vscodevim - https://marketplace.visualstudio.com/items?itemName=vscodevim.vim
1. Install goto-previous-buffer - https://marketplace.visualstudio.com/items?itemName=Serafeim.goto-previous-buffer
1. Install trailing space - https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces#show-status-bar-message
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

## Gotchyas/Todo

### Alt for Linux and Cmd for Mac
Linux uses `Alt` and MacOS uses `Cmd`. This means you need to duplicate any commands that use this key in order for things to seamlessly work on both platforms. For example:
```json
[
    // Linux config
    {
        "key": "ctrl+alt+m", // Linux
        "command": "workbench.action.toggleMaximizedPanel"
    },
    // MacOS config
    {
        "key": "ctrl+cmd+m", // Mac
        "command": "workbench.action.toggleMaximizedPanel"
    }
]
```

### Mac and `<Space><Space>` for buffer switch
One of the hotkeys I really like is `<leader><leader>` to switch to my previous buffer (i.e. the last file I had open before the one I'm viewing now). I use `<Space>` as my leader and so I use `<Space><Space>` to switch files (using the goto-previous-buffer extension). This is all well and good, but its buggy on Mac because of a default keyboard setting that treats `<Space><Space>` as adding a period. That default Mac setting is dumb and I never use it for that, and it messes with using `<Space><Space>` to reliably switch buffers.

To fix this you need to:

1. Go into System Preferences
2. Keyboard
3. [Click the text tab]
4. Uncheck the "Add period with double-space" option

### Mac key repeating
If you want to "repeat" a key (pressing and holding the `j` key in Vim will scroll down in normal mode), run the following command:

```defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false```

The __todo__ part of this is somehow templetizing this so we don't have to think about it. Easier said than done so I'll just deal with copy/pasting a few extra lines as needed.
