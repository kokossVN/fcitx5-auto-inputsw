#!/usr/bin/env bash

EXTENSION_PATH=$HOME/.local/share/fcitx5/lua/imeapi/extensions/
CONFIG_PATH=$XDG_CONFIG_HOME/fcitx5-auto-inputsw
FILES=(auto-method.lua focus_event.sh)
#
echo "Generate symlink"
for item in ${FILES[@]}; do
	echo "ln -sf $PWD/$item $EXTENSION_PATH"
	ln -sf $PWD/$item $EXTENSION_PATH
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
