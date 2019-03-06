# vim: commentstring=#%s
xmodmap ~/.Xmodmap &
unclutter --timeout=5 --jitter=1 -b &
if ! [[ $(pgrep redshift) ]]; then
    redshift &
fi
tresorit &
xrdb $HOME/.Xresources &
xset r rate 250 80 &


# Start Window Manager
# gnome-session
exec i3
