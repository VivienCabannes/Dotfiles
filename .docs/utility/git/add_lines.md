# Add specific lines for commit

A modified tracked file is divided by hunks that can be added one by one with `git add -p <file>`.
To commit line by line, one has to open `git difftool <file>`, then use the `diffput` command of vim.
However, I do not know how to add change made with `difftool` without using `git fugitive`.

Using git fugitive:
- Go to the status menu (`<leader>gs`).
- From the status menu perform a Gdiffsplit on the desired files (`g`).
- Use `:diffput` in visual mode to verse lines in the new files to the old (tmp) files.
- Save the old (tmp) file, the addition should appear in `git status`.
