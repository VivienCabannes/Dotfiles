" --------------- Native LSP client --------------- 

" Show processes, start and kill client
nnoremap <leader>aa :LspInfo<CR>
nnoremap <leader>as :LspStart<CR>
nnoremap <leader>ak :LspStop<CR>

" Help, go to definition, search for reference
nnoremap <localleader>h  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>sd      <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>sh      <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>sr      <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>si      <cmd>lua vim.lsp.buf.implementation()<CR>

" Client
lua require('user.lsp')

"lua <<EOF
"  local opts = { noremap=true, silent=true }
"  -- Mappings.
"  -- See `:help vim.lsp.*` for documentation on any of the below functions
"  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
"  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
"  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
"  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
"
"EOF
