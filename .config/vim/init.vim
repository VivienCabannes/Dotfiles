"" TODO
" Install language server behind python
" TODO; Show signature automatically (try nvim-cmp)
" How to change virtualenv in python 

" --------------- Generic --------------- 

let mapleader=" "
let maplocalleader = ","

set encoding=utf-8
set hidden
set noswapfile

syntax enable
filetype indent plugin on


" --------------- Plugins --------------- 

source $HOME/.config/vim/plug.vim


" --------------- Editor --------------- 

set background=dark

set mouse=a         " using the mouse
set number number   " see absolute number
set scrolloff=10    " display at least 10 lines before and after cursor

" Status line
set laststatus=2

" Note that Fugitive and Coc initialization modifies the status line
set statusline+=%#StatusLineNC#
set statusline+=\ %f
set statusline+=%=
set statusline+=%y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ 
set statusline+=%#StatusLine#
set statusline+=\ %m\ %c:\ %l/%L


" --------------- Naviguation --------------- 

" Better experience in insert mode
set backspace=eol,indent,start
set whichwrap+=<,>,[,]

" Better experience in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Easy exit
inoremap <C-k><C-k> <C-\><C-n>
tmap <C-k><C-k> <C-\><C-n>

" pasting mode (to remove autoindent)
set pastetoggle=<leader>P

" Working directory
nnoremap <localleader>ws :cd %:p:h<CR>:pwd<CR>
nnoremap <localleader>wk :cd <CR>:pwd<CR>


" --------------- Advanced configurations --------------- 

source $HOME/.config/vim/native/panes.vim
source $HOME/.config/vim/native/quickfix.vim

" If not provided by a plugin
"if has("nvim")
"	source $HOME/.config/vim/native/completion.vim
"endif
"
"if has("nvim")
"	source $HOME/.config/vim/neovim/diagnostic.vim
"  source $HOME/.config/vim/neovim/lsp.vim
"endif
