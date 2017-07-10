# Install TMUX
Without the need to be `root`!
Keep TMUX up to date using Github.

## Prerequisites
We need the packages `libevent` and `ncurses`.
This little script will download the newest versions from the websites respectively  and install them locally in the folder `~/.local`.
We will make a temporary folder in which we will download the sources, and delete them later.
```bash
cd $HOME
mkdir -p .local
mkdir -p tmux_temp
cd tmux_temp
```


### Libevent Setup
```bash
https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar vxfz libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./autogen.sh
./configure --prefix=$HOME/.local --disable-shared
make
make install
cd ..
```

### Ncurses Setup
```bash
wget ftp://invisible-island.net/ncurses/ncurses.tar.gz
tar vxfz ncurses.tar.gz
cd ncurses
./configure --prefix=$HOME/.local
make
make install
cd ..
```

## TMUX Setup
```bash
git clone https://github.com/tmux/tmux
cd tmux
## TMUX Setup
```bash
git clone https://github.com/tmux/tmux
cd tmux
./configure CFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-L$HOME/.local/lib -L$HOME/.local/include/ncurses -L$HOME/.local/include"
CPPFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-static -L$HOME/.local/include -L$HOME/.local/include/ncurses -L$HOME/.local/lib" make
cp tmux $HOME/.local/bin
cd ..
```

## Additional steps 
You now have to add the ld_library_path to your `.bashrc`:
```bash
export LD_LIBRARY_PATH="$HOME/tmux_temp/libevent/.libs"
```
And add the new TMUX to your `$PATH` (in `.bashrc` write):
```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Cleanup
```bash
rm -rf $HOME/tmux_temp
```
