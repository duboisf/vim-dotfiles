"" Most of these were stolen from the excellent janus vim distribution

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""

" TODO: Investigate the precise meaning of these settings
" set wildmode=list:longest,list:full
set wildmenu
set wildmode=list:longest

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Make backspace work like you expect it to (not default old vi mode)
set backspace=indent,eol,start

" Mouse support
if has("mouse")
    set mouse=a
endif

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

