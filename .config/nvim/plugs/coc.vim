" Install servers
let g:coc_global_extensions = [ 'coc-json', 'coc-vimtex', 'coc-python', 'coc-vimlsp']
" let g:coc_global_extensions+=['coc-pyright']
" Error when trying to install coc=pyright, so falling back to coc-python
" althought not maintained

" Print error in status line
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '⚠️ '. info['error'])
  endif
  let hint = 0
  if get(info, 'warning', 0)
    let hint += info['warning']
"    call add(msgs, '⚙️ ' . info['warning'])
  endif
  if get(info, 'information', 0)
    let hint += info['information']
"    call add(msgs, '🛠 ' . info['information'])
  endif
  if get(info, 'hint', 0)
    let hint += info['hint']
"    call add(msgs, '💡' . info['hint'])
  endif
  if hint > 0
    call add(msgs, '🛠 ' . hint)
  endif
  return join(msgs, ' ')
endfunction
set statusline^=\ %{StatusDiagnostic()}


"" Code commentary
set signcolumn=number  " better interplay between linenumbers of messages

"" Completion options
set updatetime=300     " Fast updatetime
set shortmess+=c       " remove completion error message

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use enter to choose completion option (NB <cr> could be remapped by other vim plugin)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"" Processes and option listing
" Manage processes (view, kill, start).
nnoremap <silent><nowait> <leader>aa  :<C-u>CocList extensions<CR>
nnoremap <silent><nowait> <leader>as  :CocEnable<CR>
nnoremap <silent><nowait> <leader>ak  /<CR>:nohlsearch<CR>:CocDisable<CR>

" Mapping for CocList
nnoremap <silent><nowait> <leader>al  :<C-u>CocList<CR>

augroup filetype_specifig
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>wv :<C-u>:CocCommand python.setInterpreter<CR>
augroup END


" Errors and diagnostics.
nnoremap <silent> <leader>ee :CocDiagnostics<cr>
nmap <silent> <leader>ep <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>en <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <leader>sd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>si <Plug>(coc-implementation)
nmap <silent> <leader>sr <Plug>(coc-references)

" Show documentation in preview window.
nnoremap <silent> <localleader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


"" Formatting and miscellaneous
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
nnoremap <localleader>ff :Format<CR>

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :,all     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

