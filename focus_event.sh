#!/usr/bin/env bash

ACTIVE_WINDOW=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | awk '{print $2}')
WM_CLASS=$(xprop -id $ACTIVE_WINDOW WM_CLASS | awk -F '"' '{print $2}')
WM_CLASS_TOLOWER=${WM_CLASS,,}

# create log
echo $WM_CLASS_TOLOWER >>/tmp/fcitx5-autosw-log.txt
LIST_APP_EN=(kitty)
LIST_APP_VI=(navigator)

#to english
for item in ${LIST_APP_EN[@]}; do
	[ $WM_CLASS_TOLOWER = $item ] && fcitx5-remote -s keyboard-us
done
#to unikey
for item in ${LIST_APP_VI[@]}; do
	[ $WM_CLASS_TOLOWER = $item ] && fcitx5-remote -s unikey
done
