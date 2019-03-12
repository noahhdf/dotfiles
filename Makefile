all: i3/.config/i3/config
	stow -t ~ \
		alacritty/ \
		bash/ \
		colorschemes/ \
		git/ \
		i3/ \
		ion/ \
		local_bin/ \
		matplotlib/ \
		nvim/ \
		polybar/ \
		rofi/ \
		ranger/ \
		redshift/ \
		tmux/ \
		vim/ \
		wal/ \
		X/

i3/.config/i3/config:
	cat i3/.config/i3/main.config i3/.config/i3/$$HOSTNAME.config > i3/.config/i3/config
