- [ ] Write everything in a nice working script.

# Install TMUX
Without the need to be `root`!

## Prerequisites
We need the packages `libevent` and `ncurses`.
This little script will download the newest versions from the websites respectively  and install them locally in the directory `~/.local`.
We will make a temporary directory in which we will download the sources, and delete them later.
Change `N` to the number of cores +1.
_There are special instructions for working on a mac!_

```bash
cd $HOME
mkdir -p .local
mkdir -p tmux_temp
cd tmux_temp
```
#### MacOsX
We need OpenSSL from [homebrew](https://brew.sh/):
```bash
brew install openssl
brew link openssl --force
```
There happens to be a specific problem with using OpenSSL from Anaconda.

### Libevent Setup
```bash
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar vxfz libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./autogen.sh
./configure --prefix=$HOME/.local --disable-shared
make -jN
make install -jN
cd ..
```

#### MacOsX
```bash
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar vxfz libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
./autogen.sh
./configure --prefix=$HOME/.local --disable-shared CFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib"
make -jN
make install -jN
cd ..
```


### Ncurses Setup
```bash
wget ftp://invisible-island.net/ncurses/ncurses.tar.gz
tar vxfz ncurses.tar.gz
cd ncurses-5.9
./configure --prefix=$HOME/.local
make -jN
make install -jN
cd ..
```

## TMUX Setup
```bash
git clone https://github.com/tmux/tmux
cd tmux
./autogen.sh
./configure CFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-L$HOME/.local/lib -L$HOME/.local/include/ncurses -L$HOME/.local/include"
CPPFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-static -L$HOME/.local/include -L$HOME/.local/include/ncurses -L$HOME/.local/lib" make -jN
cp tmux $HOME/.local/bin
cd ..
```

## Additional Steps 
You now have to add the LD\_LIBRARY\_PATH to your `.bashrc` or `.bash_profile`,
whatever you prefer, and add the new TMUX to your `$PATH`:
```bash
echo 'export LD_LIBRARY_PATH="$HOME/tmux_temp/libevent/.libs"' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
```
or
```bash
echo 'export LD_LIBRARY_PATH="$HOME/tmux_temp/libevent/.libs"' >> ~/.bash_profile
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bash_profile
```


## Cleanup
```bash
rm -rf $HOME/tmux_temp
```
