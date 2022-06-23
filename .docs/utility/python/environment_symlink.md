## Add virtualenv to the path

Create a .pth file that contains the directory to search for, *e.g.* {env-root}/lib/{python-version}/site-packages, and put it in {venv-root}/lib/{python-version}/site-packages directory.
```shell
cd $(python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")
echo /some/library/path > some-library.pth
```
The effect is the same as adding /some/library/path to sys.path, and remain local to the virtualenv setup.

