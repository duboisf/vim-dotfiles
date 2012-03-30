#!/bin/bash

cd ~
if [[ -e .vimrc ]]; then
	print "backing up .vimrc to .vimrc.old"
	mv .vimrc .vimrc.old
fi

ln -s ~/.vim/vimrc .vimrc

