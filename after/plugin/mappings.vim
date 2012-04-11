" Various usefull mappings

" Quit vim with F10. Might have trouble using this in some terminal emulators
" like gnome-terminal in ubuntu's unity window manager because it binds F10 to
" some other window manager functionnality
nmap <F10> :qa<CR>
imap <F10> <ESC>:qa<CR>

" Quit current buffer with F9
nmap <F9> :q<CR>
imap <F9> <ESC>:q<CR>

" Goto end of line in insert mode
imap <C-e> <End>

" Goto start of line in insert mode
imap <C-a> <Home>
