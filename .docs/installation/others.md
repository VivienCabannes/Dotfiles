# Neovim editor
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

# i3 Desktop (Linux)
Install i3 and rofi with your favorite package manager
```shell
$ sudo apt install i3 rofi
```

#### Specifying session window manager
When using lxsession, by default at instanciation of a new session, the configuration in `/etc/xdg/lxsession/desktop.conf` will be loaded.
It specifies the window-manager that is used.
It is possible to modify directly this files, but it is better to specify a user specific configuration in `~/.config/lxsession/`.

Some processes defined in `etc/xdg/lxsession/autostart` will be launched at start in `autostart=yes` is specified, some might be commented out in this file directly, or in its replica in the configuration folder.

## Alternative, potential future replacement
Use Sway with Wayland rather than i3 with X11

# Firefox or Chromium navigator
There are normally simple to install.
Use a black theme as well as a vim plug-in.

# Python Installation
#### With conda
Conda is a useful package manager. It is relatively light weight and works well on major architecture and distributions.
Install miniconda from anaconda website. 
Install package with `conda install`. 
Manage virtual environment with `conda create <env>` and `conda activate <env>`, you may update shell aliases and paths accordingly.

#### With pyenv and virtualenv
The package `pyenv`, which can be installed with `pip` from the system python, allows to easily switch between different versions of python.
The package `virtualenv`, which can be installed with `pip` from a python version, allows to easily switch between virtual environment.
Manage virtual environment with `virtualenv <dest>` and `<path to virtual env>/bin/activate`, you may update shell aliases and paths accordingly.

# Latex installation

Getting latex through a package manager is not recommended, as it is not useful and often outdated.

The best way to acquire latex is to get texlive software from tug.org.
Once download, the installer can be run locally.
Make sure to modify option and in particular to choose a small installation if memory is precious, and to choose the installation destination (I recommend `~/.local/share/texlive/`).
Once the installation is completed, update your paths as prompt by the installer.

## Packages
You now have the tlgmr package manager.
You can use it to install packages (*e.g.* for `latexmk`).
```shell
$ tlmgr install latexmk
```
To update packages run
```shell
$ tlmgr update --all
```

#### Useful packages
TODO: See thesis manuscript to get a list of useful packages.
- `Latexmk` is useful for automatic built.


