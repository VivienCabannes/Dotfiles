" --------------- Quickfix list --------------- 

" Open and close the quickfix or location list
nnoremap <silent> <leader>ss :cw<CR>
nnoremap <silent> <leader>sk :ccl<CR>
nnoremap <silent> <localleader>ss :lw<CR>
nnoremap <silent> <localleader>sk :lcl<CR>

" Naviguate the quickfix list
nnoremap <silent> <leader>p :cp<CR>
nnoremap <silent> <leader>n :cn<CR>
nnoremap <silent> <localleader>p :lp<CR>
nnoremap <silent> <localleader>n :lnext<CR>

" Search
" Search over project
nnoremap <leader>sp :grep<space>
nnoremap <localleader>sp :lgrep<space>

" Specify the use of ripgrep
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
  set grepformat=%f:%l:%c:%m
endif

" Clear highlight
noremap <silent> <leader>sc :nohlsearch<CR>

