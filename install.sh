#!/bin/bash

echo "Checking for vscodevim"
# check for dependency...
if ls ${HOME}/.vscode/extensions/vscodevim* 1> /dev/null 2>&1; then
    echo "Great, you have vscodevim installed. Make sure its also enabled."
    echo ""
else
    echo "You should go install vscodevim, otherwise these dotfiles are pretty useless. Comeback after you've done that..."
    echo ""
    echo "https://marketplace.visualstudio.com/items?itemName=vscodevim.vim"
    exit
fi

# determine location of settings/keybindings
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    dotfile_dir="${HOME}/.config/Code/User/"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    dotfile_dir="${HOME}/Library/Application Support/Code/User/"
fi
settings_file="${dotfile_dir}settings.json"
keybindings_file="${dotfile_dir}keybindings.json"

# backup old settings/keybindings
echo "Backing up old settings/keybindings:"
if [[ -f "$settings_file" ]]; then
    mv "${settings_file}" "${settings_file}.old"
    echo "    ${settings_file} -> ${settings_file}.old"
fi
if [[ -f "$keybindings_file" ]]; then
    mv "${keybindings_file}" "${keybindings_file}.old"
    echo "    ${keybindings_file} -> ${keybindings_file}.old"
fi

echo ""
echo "Linking this repo's settings/keybindings to:"
ln -s "${PWD}/settings.json" "${settings_file}"
echo "    ${PWD}/settings.json -> ${settings_file}"
ln -s "${PWD}/keybindings.json" "${keybindings_file}"
echo "${PWD}/keybindings.json -> ${keybindings_file}"
