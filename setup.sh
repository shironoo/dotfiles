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

# git submodule
git submodule init
git submodule update

# install emacs lisp
cd .emacs.d && cask install && cd ..
