# vim: commentstring=#%s
xset r rate 300 80 &
xmodmap ~/.Xmodmap &
unclutter --timeout=5 --jitter=1 -b &
if ! [[ $(pgrep redshift) ]]; then
    redshift &
fi
tresorit &
xrdb $HOME/.Xresources &
nm-applet &


# Start Window Manager
# gnome-session
# exec startkde
exec i3
