call pathogen#infect()

syntax on
filetype plugin indent on

if has("mouse")
	set mouse=a
endif

" Fugitive bindings
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>ge :Gedit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gblame<CR>

set background=dark
let g:solarized_termcolors=256
color solarized
set cursorline cursorcolumn

set laststatus=2
set statusline=%<%f\ %y%h%([%1*%M%*]%)%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ Pos:0x%-10O\ Ascii:0x%02B\ %P
hi User1 cterm=bold,reverse ctermfg=red ctermbg=245
