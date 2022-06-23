" --------------- Diagnostic --------------- 

set signcolumn=number  " better interplay between linenumbers of messages

" Same with errros only
nnoremap <leader>ek <cmd>lua vim.diagnostic.hide()<CR>
nnoremap <leader>es <cmd>lua vim.diagnostic.show()<CR>

" Open error, warning, info, hint
nnoremap <leader>ee <cmd> lua vim.diagnostic.setloclist({ severity = vim.diagnostic.severity.ERROR })<CR>
nnoremap <leader>ew <cmd> lua vim.diagnostic.setloclist({ severity = vim.diagnostic.severity.WARN })<CR>
nnoremap <leader>ei <cmd> lua vim.diagnostic.setloclist({ severity = vim.diagnostic.severity.INFO })<CR>
nnoremap <leader>eh <cmd> lua vim.diagnostic.setloclist({ severity = vim.diagnostic.severity.HINT })<CR>
nnoremap <leader>ea <cmd> lua vim.diagnostic.setloclist()<CR>

" Naviguate diagnostic (can also be naviguated with location list)
nnoremap <leader>en <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>ep <cmd>lua vim.diagnostic.goto_prev()<CR>

" Define error sign
sign define DiagnosticSignError text=❌ texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text=⚠️ texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignInfo text=🛠 texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text=🛠 texthl=DiagnosticSignHint linehl= numhl=

lua <<EOF
function _G.errorcount()
  return #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
end
function _G.hintcount()
	return #vim.diagnostic.get(0)
end
EOF

function! StatusDiagnostic() abort
	let msgs = []
	let hint = luaeval(v:lua.hintcount())
	if hint == 0
		return ''
	endif
	let error = luaeval(v:lua.errorcount())
	if error
	  call add(msgs, '⚠️ '. error)
	endif
	let info = hint - error
	if info
		call add(msgs, '🛠 '. eval(hint - error))
	endif
	return join(msgs, ' ')
endfunction

set statusline^=\ %{StatusDiagnostic()}
