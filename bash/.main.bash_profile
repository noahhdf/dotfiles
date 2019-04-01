# vim: ft=sh
source ~/.bash_colors
# source bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "~/.bashrc" ]; then
        source "~/.bashrc"
    fi
fi
source ~/.aliases
# link bash to /usr directory to retain path in tmux
# if ! [ -f "/usr/bin/bash" ]; then
    # echo "Linking /usr/bin/bash -> /bin/bash and need permission:"
    # sudo ln -s /bin/bash /usr/bin/bash
# fi

# added by anaconda2 4.3.1 installer
# export PATH="$HOME/anaconda2/bin:$PATH"
# added by anaconda3 4.3.1 installer
# export PATH="$HOME/anaconda3/bin:$PATH"
# additional python2 behaviour
# alias 'python2'='/Users/nbiederbeck/anaconda2/bin/python'
# alias 'virtualenv2'='/Users/nbiederbeck/anaconda2/bin/virtualenv'
# alias 'conda2'='/Users/nbiederbeck/anaconda2/bin/conda'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1) /'
}

parse_git_repo() {
    git remote -v 2> /dev/null | grep 'origin.*fetch' | sed -E 's/.*git(hub|lab).(com|de)./(/;s/(.git)? .*/: /'
}

print_git_info() {
    echo "$(clr_brown '$(parse_git_repo)$(parse_git_branch)')"
}

# export PS1='\[\033[0;31m\]$(parse_git_branch) \[\033[0;34m\]\w\n\[\033[1;32m\]\[\033[0m\]$ '
export PS1="$(print_git_info)$(clr_green '\w')\n$ "

# export PATH="$HOME/.cargo/bin:$PATH"
# export DISABLE_AUTO_TITLE=true
# export PATH="$HOME/.source/bin:$PATH"

# path to alacritty github
# export PATH="$HOME/Git/alacritty/target/release:$PATH"
# export PATH="$HOME/Git/i3wm/polybar:$PATH"
# export PATH="$HOME/shellScripts:$PATH"
# firefox
# export PATH="$HOME/Downloads/firefox-57.0/firefox:$PATH"

# tex
# export PATH="$(echo ~/.local/texlive/*/bin/*):$PATH"

# sd card variable
# export SD="/media/noah/23c4ddbc-85fa-4cea-b96b-edae0bb138c9"

# xmodmap ~/.Xmodmap

export PATH="$HOME/.cargo/bin:$PATH"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
