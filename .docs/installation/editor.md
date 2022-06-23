# Neovim
Install neovim with your package manager, for example with `apt`
```shell
$ sudo apt install neovim
```

Install the vim-plug plugin manager.
```shell
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Open neovim with the `nvim` command, and run the following command to install plugins
```vim
:PlugInstall
```
Once plugins are install, relaunch `nvim` and Coc-plugin are going to be automatically installed

NB: Some plugin might use dependency such as nodejs, ruby or python.
This can be checked with `:checkhealth`. In particular, Coc.nvim is built on nodejs.

## Useful features
Install `ripgrep` for project-scope search.

# Vim
Vim is often installed on system, and working directly with it might be easier for backward compatibility issues.

Install the vim-plug plugin manager
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```