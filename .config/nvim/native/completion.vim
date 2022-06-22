" --------------- Completion --------------- 

" Tab menu
set wildmenu
set completeopt=menu
set pumheight=10      " show at most 10 options

" Completion functions
set omnifunc=syntaxcomplete#Complete

" Use tab for trigger omnifunc completion or circle on menu
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ "\<C-x>\<C-o>"
" Use super tab to trigger local completion or circle back on menu
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" :
      \ <SID>check_back_space() ? "\<S-TAB>" :
      \ "\<C-n>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
