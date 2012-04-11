if version < 700
    finish
endif

fun s:sourceIfExists(file)
    let file = expand(a:file)
    if filereadable(file)
        exe 'source ' . file
    endif
endf

call s:sourceIfExists("~/.vimrc.before")

call pathogen#infect()
call pathogen#helptags()

syntax on

" Enable loading of plugins and indentation for specific file types
filetype plugin indent on

" Color!
set background=dark
if &t_Co == 256
    let g:solarized_termcolors=256
    color solarized
    set cursorline cursorcolumn
endif

" If you want to overwrite any settings/mappings/whatever, do it in this file
call s:sourceIfExists("~/.vimrc.after")
