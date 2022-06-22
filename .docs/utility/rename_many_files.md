Open vim with all the name of the current folder
```shell
$ ls | nvim -
```
Each filename should appear on a new line.
Duplicate each filename with modification and add the move command
```vim
:%s/.*/\="mv ".submatch(0)."".substitute(submatch(0), "old pattern", "new pattern", "g")
```
Dots are used for string concatenation and `\=` mean evaluate.
Execute this script
```vim
:w !sh
```
