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

ln -v -s ~/.vim/vimrc .vimrc
set -x
touch ~/.vimrc.before
touch ~/.vimrc.after
set +x

if [[ ! -d ~/.vim/bundle ]]; then
    mkdir ~/.vim/bundle
fi

while true; do
    echo "Enable all vim plugins (pathogen bundles)? [y]/n"
    read answer
    case $answer in
        y|Y)
            cd ~/.vim/bundle
            for b in ../bundle-available/*; do
                ln -v -s $b .
            done
            break
            ;;
        n|N)
            echo "If you want to enable individual plugins, check out ~/.vim/README"
            break
            ;;
        *)
            ;;
    esac
done
