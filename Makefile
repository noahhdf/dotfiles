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

i3/.config/i3/config: FORCE
	cat i3/.config/i3/main.config i3/.config/i3/$$HOSTNAME.config > i3/.config/i3/config

bash/.bashrc: FORCE
	cat bash/.main.bashrc bash/.$$HOSTNAME.bashrc > bash/.bashrc

bash/.bash_profile: FORCE
	cat bash/.main.bash_profile bash/.$$HOSTNAME.bash_profile > bash/.bash_profile

FORCE:
