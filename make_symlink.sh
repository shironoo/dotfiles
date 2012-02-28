#!/bin/sh

# create symbolic link
cd $(dirname $0)
for dotfile in .?*
do    
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
	ln -Fis "$PWD/$dotfile" $HOME
    fi
done

# delete ibus-setting if use univ-server
if [ "$(whoami | md5sum)" = "d8ee4cf7ae53d63f7fb4ae83082a6bf7  -" ]
then
    echo "delete ~/.emacs.d/inits/10_input.el"
    unlink ~/.emacs.d/inits/10_input.el
fi
