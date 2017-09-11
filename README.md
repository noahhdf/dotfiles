### todo
- [ ] Makefile
  - a Makefile should backup all old dotfiles !
  - then symlink or (maybe better?) copy the new ones in place
    - [x] check out GNU stow !
    - maybe two different approaches, one for contributors, one for users (!)
  - (maybe revoke the whole process to use old dotfiles again, to make a super easy switch)
  - (maybe a functionality (with configfile) to copy/symlink only a handful of files)

# dotfiles
All files are usable, in use and up-to-date!

Check out the [installationguide](https://github.com/nonator/dotfiles/blob/master/install_tmux.md) for `TMUX` without the need to be `root`.

## usage
The Makefile uses `stow`.
The directories `laptop`, `mac`, `vollmond` only differ in a few configs, but
are mostly the same.
Use with `make laptop`, and clean with `make laptopclean`.
Old dotfiles have to be deleted or backed up.

_maintained by NB_
