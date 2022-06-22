
# Commenting
noremap <silent> <leader>cc :s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>ck :s/\(^\s*\)\@<=<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>

" Indent
setlocal tabstop=2 shiftwidth=2
