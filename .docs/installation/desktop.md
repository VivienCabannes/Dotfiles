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

