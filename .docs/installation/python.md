# Python Installation
## With conda
Conda is a useful package manager. It is relatively light weight and works well on major architecture and distributions.
Install miniconda from anaconda website. 
Install package with `conda install`. 
Manage virtual environment with `conda create <env>` and `conda activate <env>`, you may update shell aliases and paths accordingly.

#### **Mamba** 
`mamba` is a fast package manager that can be plugged on top of conda.
```shell
$ conda install mamba
```
Once `mamba` is installed, it can be used a a replacement of `conda`.
For example, to create a new environment.
```shell
$ mamba create -n fts python=3.10
```
In comparison with `pip`, `mamba` is useful to install `C` libraries and other executables.

## With pyenv and virtualenv
The package `pyenv`, which can be installed with `pip` from the system python, allows to easily switch between different versions of python.
The package `virtualenv`, which can be installed with `pip` from a python version, allows to easily switch between virtual environment.
Manage virtual environment with `virtualenv <dest>` and `<path to virtual env>/bin/activate`, you may update shell aliases and paths accordingly.
