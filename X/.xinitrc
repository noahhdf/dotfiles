# vim: commentstring=#%s
xset r rate 300 80 &
xmodmap ~/.Xmodmap &
unclutter --timeout=5 --jitter=1 -b &
if ! [[ $(pgrep redshift) ]]; then
    redshift &
fi
tresorit &
xrdb $HOME/.Xresources &


# Start Window Manager
# gnome-session
cat $HOME/.config/i3/main.config $HOME/.config/i3/$HOSTNAME.config > $HOME/.config/i3/config
exec i3
