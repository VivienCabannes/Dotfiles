" --------------- Panes --------------- 

"" Tab management
nnoremap <leader>tt :tabs<CR>
nnoremap <silent> <leader>tk :tabclose<CR> 
nnoremap <silent> <leader>th :tabprevious<CR>
nnoremap <silent> <leader>tl :tabnext<CR>
nnoremap <silent> <leader>t0 :tabfirst<CR>
nnoremap <silent> <leader>t$ :tablast<CR>
nnoremap <silent> <leader>tH :tabm -1<CR>
nnoremap <silent> <leader>tL :tabm +1<CR>
" Extend all buffers into tabs
nnoremap <silent> <leader>te :tab ball<CR>
" Extend current window into tab
nnoremap <silent> <leader>tf :tab split<CR>

" Buffers
nnoremap <leader>bb :buffers<CR>:buffer<Space>
nnoremap <silent> <leader>bk :bp<CR>:bd#<CR>
nnoremap <leader>bh :bp<CR>
nnoremap <leader>bl :bn<CR>

" Files
nnoremap <leader>ff :Ex<CR>
nnoremap <leader>ft :Tex<CR>
nnoremap <leader>fh :Vex<CR>
nnoremap <leader>fk :Sex<CR>
" rename buffer
nnoremap <leader>fr :cd %:p:h<CR>:!mv %<Space>
" Use `:e` to naviguate before opening a file
" Use `gf` when on a filename to open it 

"" Window management
" Create new window
nnoremap <leader>wj <C-w>s
nnoremap <leader>wl <C-w>v
" Move between window
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" Change H/V splits
nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L

" Resize window
nnoremap <leader>rr <C-w>=
nnoremap <leader>rh <C-w><
nnoremap <leader>rj <C-w>+
nnoremap <leader>rk <C-w>-
nnoremap <leader>rl <C-w>>
nnoremap <silent> <leader>rH <C-w>:vertical resize<CR>
nnoremap <silent> <leader>rJ <C-w>:resize<CR>
nnoremap <silent> <leader>rf :vertical resize<CR> :resize<CR>

" Open terminal
nnoremap <silent> <leader><CR> :terminal<CR>

