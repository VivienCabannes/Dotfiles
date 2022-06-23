
" Comment
noremap <silent> <leader>cc :s/^/--/<CR>:nohlsearch<CR>
noremap <silent> <leader>ck :s/\(^\s*\)\@<=--//<CR>:nohlsearch<CR>

" Indent
setlocal tabstop=2 shiftwidth=2
