# Keybinding

## Leader based
In general, `s` stands for start and `k` for kill, and `f` for focus.

#### a: lsp server
- `<leader>aa`: show running processes
- `<leader>as`: start process
- `<leader>ak`: stop processes

#### b: buffer
- `<leader>bb`: show all buffers
- `<leader>bh`: go to previous buffer
- `<leader>bl`: go to next buffer
- `<leader>bk`: close buffer

#### c: comments
- `<leader>cc`: comment 
- `<leader>ck`: uncomment

#### e: errors (nvim diagnostic)
- `<leader>ea`: show all (errors, warning, information, hints)
- `<leader>ee`: show errors
- `<leader>eh`: show hints
- `<leader>ei`: show information
- `<leader>ek`: hide diagnostics
- `<leader>en`: go to next diagnostic
- `<leader>ep`: go to previous diagnostic
- `<leader>es`: show diagnostics
- `<leader>ew`: show warnings

#### f: fileexplorer
- `<leader>fr`: rename current buffer

#### n: next
- `<leader>n`: go to next item of the quickfix list

#### P: paste mode
- `<leader>P`: toggle paste mode (useful to remove autoindent)

#### p: previous
- `<leader>p`: go to previous item of the quickfix list

#### r: resize
- `<leader>rr`: equalize window sizes
- `<leader>rf`: focus on current buffer
- `<leader>rH`: horizontal focus
- `<leader>rJ`: vertical focus

#### s: search
- `<leader>sc`: clear search highlights
- `<leader>sd`: search definition (lsp)
- `<leader>sh`: show signature (lsp)
- `<leader>si`: search implementation (lsp)
- `<leader>sk`: close quickfix list
- `<leader>sp`: search project wise
- `<leader>sr`: search references (lsp)
- `<leader>ss`: open quickfix list
- `<leader>st`: search type definition (lsp)

#### t: tabs
- `<leader>tt`: show all tabs
- `<leader>tk`: close tab
- `<leader>te`: expand all buffers into tabs
- `<leader>tf`: focus current buffer into a new tab

#### w: window

## Local leader based

#### f: formatting (ftplugin)
- `<localleader>ff`: format current file
- `<localleader>fp`: format current working directory

#### g: git (fugitive)
- `<localleader>gs`: git status
- `<localleader>gl`: git status

#### h: help (lsp)
- `<localleader>h`: call lsp hover function

#### l: latex (vimtex)
See `:help vimtex-default-mappings`

#### n: next
- `<localleader>n`: go to next item of the location list

#### p: previous
- `<localleader>p`: go to previous item of the location list

#### s: search
See `leader`-based combination.

#### w: workspace
- `<localleader>ws`: set working directory to file folder.
- `<localleader>wk`: set working directory to home directory.
- `<localleader>wv`: (Coc) activate python virutal environment
