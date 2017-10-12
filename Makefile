laptop_files = \
	i3 rofi bash terminals

same_files = \
	colors git vim nvim

all:
	stow $(laptop_files) $(same_files)

vollmond:
	stow vollmond $(same_files)

clean:
	stow -D $(laptop_files) $(same_files)

superclean:
	rm -rf ~/.bashrc ~/.bash_alias ~/.bash_profile \
		~/.vimrc ~/.config/nvim/ \
		~/.config/rofi/ \
		~/.config/i3blocks/ ~/.config/i3lock/ ~/.config/i3/ ~/.config/i3status \
		~/.Xresources ~/.gitconfig \
		~/.tmux.conf ~/.config/alacritty/

.PHONY: all vollmond clean superclean

# maybe check whether noah and guest should be phony or not
# if the time is checked correctly, it would only stow if newer files are
# present
# otherwise it would jsut check the time of the directory

# This should bring me very far:
# stow -d DIR -t TARGET -S files
# Example:
# stow -d noah -t $HOME -S vim bash i3

# Now very important is that the directory structure is the same as it should
# be in HOME-directory!
# That means i.e.:
# i3/
# - .config/
#   - i3/
#     - config
#   - i3status/
#     - config
#   - i3lock/
#     - i3lock
#     - lock.sh
# bash/
# - .bashrc
# - .bash_profile
# - .bash_alias
# vim/
# - .vimrc
# rofi/
# - .config/
#   - rofi/
#     - config
