" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

" Initialize plugin system
call plug#end()

" Run make with hotkey
vmap <M-m> <Esc>:wa<CR>:make<CR>:cw<CR>
imap <M-m> <Esc>:wa<CR>:make<CR>:cw<CR>
nmap <M-m> <Esc>:wa<CR>:make<CR>:cw<CR>

" Backups are good, but put them in another dir
set backup
set backupdir=~/.backups

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set tw=100
set colorcolumn=100
set wrap
set list

set ts=4    " tab and shift width
set sw=4    "
set et      " expand tabs to spaces
set smarttab
set autoindent
set smartindent
set relativenumber
set number
set hidden

let mapleader = " "
nmap <leader>v :tabnew $MYVIMRC<CR>
nmap <leader>l :tabnew ~/Dropbox/TODO<CR>
nmap <leader>m :wa<CR>:make
nmap <leader>/ :Ggrep 

"if has("gui_macvim")
nmap <leader>8 :silent execute 'silent Ggrep -w ' . expand("<cword>") <Bar> :cw<CR>
nmap <C-n> :copen<CR>:cn<CR>
nmap <C-p> :copen<CR>:cp<CR>
nmap <C-\> :cclose<CR>
"else
"    map <M-8> :silent execute 'silent Ggrep -w ' . expand("<cword>") <Bar> :cw<CR>
"    map <M-t> :silent execute 'silent Ggrep -w TODO'<Bar> :cw<CR>
"    map <M-j> :copen<CR>:cn<CR>
"    map <M-k> :copen<CR>:cp<CR>
"    map <M-#> :cclose<CR>
"endif
"\
"
