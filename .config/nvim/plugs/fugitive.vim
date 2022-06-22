" Fugitive
let g:fugitive_no_maps = 1
nmap <localleader>gs :Git<CR>
nmap <localleader>gl :Git log<CR>

set statusline^=\ %{fugitive#head()}\ 

augroup fugitive_maps
  autocmd!
  autocmd User FugitiveIndex nmap <buffer> ; =
  autocmd User FugitiveIndex nmap <buffer> x X
  autocmd User FugitiveIndex nmap <buffer> g dv
  autocmd User FugitiveObject,FugitiveIndex nmap <buffer> <leader>n )
  autocmd User FugitiveObject,FugitiveIndex nmap <buffer> <leader>p (
  autocmd User FugitiveObject,FugitiveIndex nmap <buffer> <leader>N ]/
  autocmd User FugitiveObject,FugitiveIndex nmap <buffer> <leader>P [/
augroup END

