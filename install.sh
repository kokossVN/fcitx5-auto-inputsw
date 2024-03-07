#!/usr/bin/env bash

EXTENSION_PATH=$HOME/.local/share/fcitx5/lua/imeapi/extensions/
FILES=(auto-method.lua focus_event.sh)

for item in ${FILES[@]}; do
	echo "ln -sf $PWD/$item $EXTENSION_PATH"
	ln -sf $PWD/$item $EXTENSION_PATH
done

echo "done"

ls -la $EXTENSION_PATH
