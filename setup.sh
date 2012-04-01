#!/bin/bash

timestamp=`date +%Y-%m-%d_%H:%m`

cd ~

backup_file() {
	file_to_backup=$1
	if [[ -e $file_to_backup ]]; then
		backupfile="${file_to_backup}.${timestamp}.old"
		mv -v $file_to_backup $backupfile
	fi
}

backup_file ~/.vimrc
ln -s ~/.vim/vimrc .vimrc

if [[ ! -e ~/.vimrc.pre ]]; then
	touch ~/.vimrc.pre
fi

if [[ ! -e ~/.vimrc.post ]]; then
	touch ~/.vimrc.post
fi

print 'done!'
