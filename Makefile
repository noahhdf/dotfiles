BUILD = \
	bash/.bashrc \
	bash/.bash_profile

all: $(BUILD)
	stow -t ~ \
		alacritty/ \
		bash/ \
		colorschemes/ \
		fish/ \
		git/ \
		i3/ \
		mutt/ \
		nvim/ \
		rofi/ \
		ranger/ \
		redshift/ \
		tmux/ \
		vim/ \
		wal/ \
		zsh/ \
		X/
