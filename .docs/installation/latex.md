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
- `cm-super`, `rsfs` fonts used by default by matplotlib when specifying the usage of tex.
- `newtx` for modern fonts.
- `mathalpha` for mathematics.
- `pgfplots` for plots.
- `enumitem` for listings.
- `algorithm2e` to write algorithms.
- `appendix` to have appendix at the end of chapters.
