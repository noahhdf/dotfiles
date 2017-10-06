# vim: ft=sh
# source bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "~/.bashrc" ]; then
        source "~/.bashrc"
    fi
fi
# link bash to /usr directory to retain path in tmux
# if ! [ -f "/usr/bin/bash" ]; then
#     echo "Linking /usr/bin/bash -> /bin/bash and need permission:"
#     sudo ln -s /bin/bash /usr/bin/bash
# fi

# added by anaconda2 4.3.1 installer
export PATH="/Users/nbiederbeck/anaconda2/bin:$PATH"
# added by anaconda3 4.3.1 installer
export PATH="/Users/nbiederbeck/anaconda3/bin:$PATH"
# additional python2 behaviour
alias 'python2'='/Users/nbiederbeck/anaconda2/bin/python'
alias 'virtualenv2'='/Users/nbiederbeck/anaconda2/bin/virtualenv'
alias 'conda2'='/Users/nbiederbeck/anaconda2/bin/conda'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  }
export PS1='\[\033[0;32m\]\u@\h: \[\033[0;31m\]$(parse_git_branch) \[\033[0;34m\]\w\n\[\033[1;32m\]\[\033[0m\]$ '

export PATH="$HOME/.cargo/bin:$PATH"
export DISABLE_AUTO_TITLE=true
export PATH="$HOME/.source/bin:$PATH"
# path to alacritty github
export PATH="$HOME/Git/alacritty/target/release:$PATH"
export PATH="$HOME/Git/i3wm/polybar:$PATH"

source ~/.bash_alias
