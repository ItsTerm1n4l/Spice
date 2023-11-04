#!/bin/bash
#
#			This script is called by splash to reload any prgrams that do not automatically reload with their new themes.
#			To use, add a shell command below that will reload your app.
#

# fish
fish --command="echo "y" | fish_config theme save "splash""

# xfce4-terminal

#sed -i "$(( $(wc -l <~/.config/xfce4/terminal/terminalrc )-5+1 )),$ d" ~/.config/xfce4/terminal/terminalrc
#cat ~/.config/xfce4/terminal/colorschemes/splash.theme >> ~/.config/xfce4/terminal/terminalrc

# EWW (Elkowars Wacky Widgets)
#$HOME/.config/eww/scripts/splasheww.sh
# Neww Bar
$HOME/.config/eww/eww_prime/scripts/splasheww.sh

# Wayfire
mv $HOME/.config/wayfire_prime.ini $HOME/.config/wayfire.ini

# GTK
gsettings set  org.gnome.desktop.interface gtk-theme 'London-night' && gsettings set  org.gnome.desktop.interface gtk-theme 'themable'
