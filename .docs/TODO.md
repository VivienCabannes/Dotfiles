# TODO

## Modify luminosity/sound with i3

#### Pulse Audio controls
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +5% #increase sound volume
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -5% #decrease sound volume
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle # mute sound

#### Screen brightness controls
bindsym XF86MonBrightnessUp exec xbacklight -inc 20 # increase screen brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 20 # decrease screen brightness

#### Touchpad controls
bindsym XF86TouchpadToggle exec /home/kuzyn/.dot/bin/toggle_touchpad.sh # toggle touchpad

#### Media player controls
bindsym XF86AudioPlay exec cmus-remote --pause
bindsym XF86AudioPause exec cmus-remote --pause
bindsym XF86AudioNext exec cmus-remote --next
bindsym XF86AudioPrev exec cmus-remote --prev
bindsym XF86AudioStop exec cmus-remote --stop

## Replace i3 with sway
Optional

## Get a better terminal and setup a gruvbox theme on it
Use Alacritty

## Put neomutt config online and experiment more with it
Install it on mac

## Put back lxsession config files on raspberry pi as well as online


