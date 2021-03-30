packadd! dracula
packadd! nord-vim
packadd! darcula
packadd! onedark.vim
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O


" set rtp+=~/tabnine-vim


au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

set nocompatible              " required


set foldmethod=indent
set foldlevel=99

filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells

set encoding=utf-8
