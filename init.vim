" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'w0ng/vim-hybrid'

" Initialize plugin system
call plug#end()

color hybrid

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
set cursorline

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
"
let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'


" get out of terminal mode same way as insert mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  let g:neovide_cursor_vfx_mode = 'pixiedust'
  let g:neovide_fullscreen = v:true
endif

