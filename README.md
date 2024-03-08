# Unikey automation switch extension for Fcitx5

## Usage

### Requirement
Make sure you have [fcitx5](https://github.com/fcitx/fcitx5),[fcitx5-lua](https://github.com/fcitx/fcitx5-lua) and [fcitx5-unikey](https://github.com/fcitx/fcitx5-unikey) installed

for BTW-Linux(Arch-Linux btw :penguin:):
```sh 
pacman -Sy fcitx5 fcitx5-lua fcitx5-unikey
```

for Debian(Ubuntu/Lubuntu/Kubuntu/Kali):
```sh 
apt install fcitx5 fcitx5-unikey fcitx5-module-lua
```
Ensure your fcitx5 loaded  **imeapi** and **luaaddonloader** (check in tab Addons in fcitx5-configtools or run fcitx5 on terminal)

### Install
Clone this repo
```sh
https://github.com/kokossVN/fcitx5-auto-inputsw
```
go to repo then run install.sh
```sh
cd fcitx5-auto-inputsw
./install.sh
```
then restart fcitx5 to apply extension
```sh 
fcitx5-remote -r
```
### How it work?
*idk LOL*

### How to use this?
After installed, extension will auto activate 

#### Configure
Check Activate Window class in `log_streaming.sh`

Then Put your class into 1 of 2 array `~/.config/fcitx5-auto-inputsw/config`

