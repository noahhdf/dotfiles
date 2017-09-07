d = $(shell pwd)
help:
	@echo 'This file will overwrite the configs of:'
	@echo '- bash_profile'
	@echo '- vim'
	@echo '  - nvim'
	@echo '- tmux'
	@echo '- Xresources'
	@echo '- i3'
	@echo '- i3lock and configs'
	@echo '- i3status'
	@echo '- alacritty terminal emulator'
	@echo '- rofi'
	@echo '- git'
	@echo ' '
	@echo '`make usage`'

usage:
	@echo 'make clean:'
	@echo '- removes all old files forever'
	@echo ' '
	@echo 'make laptop:'
	@echo '- symlinks all files usable by laptop including i3 and rofi'
	@echo ' '
	@echo 'make vollmond:'
	@echo '- symlinks only bash, tmux and vim'
	@echo ' '
	@echo 'make mac:'
	@echo '- symlinks mac-specific files'

clean:
	@echo 'Caution!'
	@rm -f ~/.bash_profile
	@rm -f ~/.vimrc
	@rm -f ~/.tmux.conf
	@rm -f ~/.Xresources
	@rm -f ~/.config/i3/config
	@rm -f ~/.config/i3/i3lock
	@rm -f ~/.config/i3/lock.sh
	@rm -f ~/.config/i3status/config
	@rm -f ~/.config/alacritty/alacritty.yml
	@rm -f ~/.config/rofi/config
	@rm -f ~/.gitconfig

laptop: clean
	@ln -s $d/bash/bash_profile.laptop ~/.bash_profile
	@ln -s $d/vim/small_vimrc ~/.vimrc
	@ln -s $d/terminals/tmux/tmux.conf.laptop ~/.tmux.conf
	@ln -s $d/colors/nord_Xresources ~/.Xresources
	@ln -s $d/i3/config ~/.config/i3/config
	@ln -s $d/i3/lock/i3lock ~/.config/i3/i3lock
	@ln -s $d/i3/lock/lock.sh ~/.config/i3/lock.sh
	@ln -s $d/i3/status/config ~/.config/i3status/config
	@ln -s $d/terminals/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
	@ln -s $d/rofi/config ~/.config/rofi/config
	@ln -s $d/git/gitconfig ~/.gitconfig
	@echo 'Files symlinked.'

mac: clean
	@ln -s $d/bash/bash_profile ~/.bash_profile
	@ln -s $d/vim/vimrc ~/.vimrc
	@ln -s $d/terminals/tmux/tmux.conf.mac ~/.tmux.conf
	@ln -s $d/colors/nord_Xresources ~/.Xresources
	@echo 'Files symlinked.'

vollmond: clean
	@ln -s $d/bash/bash_profile.vollmond ~/.bash_profile
	@ln -s $d/vim/vimrc ~/.vimrc
	@ln -s $d/terminals/tmux/tmux.conf.vollmond ~/.tmux.conf
	@echo 'Files symlinked.'
