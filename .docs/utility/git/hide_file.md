## Hide modified file
To edit a tracked file without tracking its change, remove it from the worktree
```shell
$ config update-index --skip-worktree <file>
```
To track back this file, run
```shell
$ config update-index --no-skip-worktree <file>
```
To list all files hiddden from git, run
```
$ config ls-files -v | grep "S *"
```
NB: The same works for any git repository with the `git` command instead of `config`.

