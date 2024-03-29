#!/usr/bin/env bash

EXTENSION_PATH=$HOME/.local/share/fcitx5/lua/imeapi/extensions/
CONFIG_PATH=$HOME/.config/fcitx5-auto-inputsw
FILES=(auto-method.lua focus_event.sh)
THIS_PWD=$(realpath $0)
#
echo "mkdir -p ~/.local/share/fcitx5/lua/imeapi/extensions"
mkdir -p ~/.local/share/fcitx5/lua/imeapi/extensions
#
echo "Generate symlink"
for item in ${FILES[@]}; do
	echo "ln -sf $THIS_PWD/$item $EXTENSION_PATH"
	ln -sf $THIS_PWD/$item $EXTENSION_PATH
done
#
echo "Generate config file"
echo "mkdir -p $CONFIG_PATH"
mkdir -p $CONFIG_PATH
# echo "echo -e \"LIST_APP_EN=()\nLIST_APP_VI=()\" >$CONFIG_PATH/config"
if [ ! -f $CONFIG_PATH/config ]; then
	echo "Initialize config"
	echo -e "LIST_APP_EN=()\nLIST_APP_VI=()" >$CONFIG_PATH/config
	echo "cat $CONFIG_PATH/config"
	cat $CONFIG_PATH/config
fi
#
echo "Done!"
ls -la $EXTENSION_PATH
