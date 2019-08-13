BUILD = \
	bash/.bashrc \
	bash/.bash_profile

all: $(BUILD)
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

$(BUILD): FORCE
	./create

FORCE:
