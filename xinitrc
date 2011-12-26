xrdb -merge ~/.Xresources                   # load x resource prefs
xsetroot -solid '#002b36'                   # set bg color
setxkbmap -layout us
xmodmap ~/.xmodmaprc                        # swap some keys around (æ,ø,å)
xmodmap -e "add mod4 = Super_L"             # used by xmonad, Super_L due to MBP
xset r rate 250 60                          # keyboard repeat delay and rate
xsetroot -cursor_name left_ptr              # sets root xcursor
dropboxd &                                  # dropbox sync client
urxvtd -q -o -f &                           # starts urxvt daemon
xinput set-button-map 10 1 2 3 5 4          # enable inverse scrolling
xset s off                                  # disable screen blanking
xset b off                                  # disable bell beep.
dispad &                                    # disable touchpad while typing.
start-pulseaudio-x11                        # pulseaudio sound server X11 startup script
eval `ssh-agent`                            # ssh agent for Github, etc
exec ck-launch-session dbus-launch xmonad   # gogo xmonad

