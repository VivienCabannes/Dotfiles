
" Comment
noremap <silent> <leader>cc :s/^/# /<CR>:nohlsearch<CR>
noremap <silent> <leader>ck :s/\(^\s*\)\@<=# //<CR>:nohlsearch<CR>

" Formatting (with black)
nnoremap <buffer> <localleader>ff :!black %<CR>
nnoremap <buffer> <localleader>fp :!black .<CR>

" Indent
setlocal tabstop=4 shiftwidth=4
