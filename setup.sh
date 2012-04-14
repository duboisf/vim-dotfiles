#!/bin/bash

typeset -i PLUGINS_ONLY=0

if [[ $1 == "-p" ]]; then
    PLUGINS_ONLY=1
    shift
fi

timestamp=`date +%Y-%m-%d_%H:%m`

cd ~

backup_file() {
    file_to_backup=$1
    if [[ -e $file_to_backup ]]; then
        backupfile="${file_to_backup}.${timestamp}.old"
        mv -v $file_to_backup $backupfile
    fi
}

if (( $PLUGINS_ONLY == 0 )); then
    backup_file ~/.vimrc
    
    ln -v -s ~/.vim/vimrc .vimrc
    set -x
    touch ~/.vimrc.before
    touch ~/.vimrc.after
    set +x
fi

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

# vim: sw=4:sts=4:ts=4
