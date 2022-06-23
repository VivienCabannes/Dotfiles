
autocmd FileType python map <buffer> <localleader>fe :call flake8#Flake8()<CR>
autocmd BufWritePost *.py call flake8#Flake8()
