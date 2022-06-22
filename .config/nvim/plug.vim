" Plug-in server - working after the installation of junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
" Colortheme
Plug 'morhetz/gruvbox'

" Git integration
Plug 'tpope/vim-fugitive'

" Language server
Plug 'lervag/vimtex'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'

" Language client
"if has('nvim')
"  Plug 'neovim/nvim-lspconfig'
""	Plug 'hrsh7th/nvim-cmp'
"else
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"endif

call plug#end()

source $HOME/.config/nvim/plugs/gruvbox.vim
source $HOME/.config/nvim/plugs/fugitive.vim
source $HOME/.config/nvim/plugs/vimtex.vim

source $HOME/.config/nvim/plugs/jedi.vim
source $HOME/.config/nvim/plugs/flake8.vim

"if has("nvim")
"  lua require('lspconfig').pylsp.setup{}
""  lua require('lspconfig').pyright.setup{}
""  lua require('lspconfig').jedi_language_server.setup{}
"  lua require('user.lspconfig')
""  lua require('cmp')
"else
	source $HOME/.config/nvim/plugs/coc.vim
"endif
