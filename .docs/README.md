# Configuration
## Installation
We configure a bare git repository into ``$HOME.cfg``.
First of all, make sure to avoid weird recursion problem with
```shell
$ echo ".cfg" >> .gitignore
```
Clone the config repository
```
$ git clone --bare git@github.com:VivienCabannes/dotfiles.git $HOME/.cfg
```
We will use the alias `config`, rather than `git` to work in this directory.
As a consequence, write the following line into your shell profile, and source it.
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
Using this alias, checkout and remove untracked files from showing in git status.
```
$ config checkout
$ config config --local status.showUntrackedFiles no
```
