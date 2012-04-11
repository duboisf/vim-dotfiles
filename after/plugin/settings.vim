"" Other settings
""

""
"" Statusline
""
if exists('g:loaded_fugitive')
    set statusline=%<%f\ %y%h%([%1*%M%*]%)%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
else
    set statusline=%<%f\ %y%h%([%1*%M%*]%)%r%=%-14.(%l,%c%V%)\ %P
endif

" Color the 'unsaved changes' modifier red (in the status line)
hi User1 cterm=bold,reverse ctermfg=red ctermbg=245

" Always display status line
set laststatus=2

""
"" Completion
""
set completeopt=longest
