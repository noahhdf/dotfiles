all: laptop

files = bash colors git i3 rofi terminals vim

laptop:
	stow -d laptop -t ~ -S $(files)

mac:
	stow -d mac -t ~ -S $(files)

vollmond:
	stow -d vollmond -t ~ -S $(files)

laptopclean:
	stow -d laptop -t ~ -D $(files)

macclean:
	stow -d mac -t ~ -D $(files)

vollmondclean:
	stow -d vollmond -t ~ -D $(files)

.PHONY: mac laptop vollmond laptopclean macclean vollmondclean all



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
