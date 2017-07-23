# source bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "~/.bashrc" ]; then
        source "~/.bashrc"
    fi
fi
# link bash to /usr directory to retain path in tmux
if ! [ -f "/usr/bin/bash" ]; then
    echo "Linking /usr/bin/bash -> /bin/bash and need permission:"
    sudo ln -s /bin/bash /usr/bin/bash
fi

alias '..'='cd ..'
alias 'rm'='rm -vI'
alias 'mv'='mv -v'
alias 'cp'='cp -v'
alias 'mkdir'='mkdir -p'
alias 'neofetch'='clear && neofetch'
alias 'ls'='ls -h --color="always"'
alias 'll'='ls -al'
alias 'la'='ls -a'
alias 'pdfpandoc'='pandoc -r markdown -w latex -o'
alias 'speedtest'='time seq -f "test %g"'
alias 'vim'='nvim'
alias 'scp'='scp -i $HOME/.ssh/id_rsa.phido'
alias 'copyplots'='rsync -avzuh --progress -e ssh nbiederbeck@vollmond:bachelorArbeit/ggplots/*  ~/Uni/BA/BAthesis/ggplots/'
alias 'make'='time make'
alias 'python'='time python'
alias 'notebook'='jupyter notebook' # && nbconvert *.ipynb'
alias 'nbconvert'='time jupyter nbconvert --to python'
alias 'hqm'='cd /Users/nbiederbeck/Uni/hqm && git pull'
alias 'fp'='cd /Users/nbiederbeck/Uni/fp && git pull'
alias 'bot'='cd /Users/nbiederbeck/Git/HPkU4hwcvr_bot && git pull'
# alias 'low'='$HOME/shellScripts/low.sh'
# alias 'high'='$HOME/shellScripts/high.sh'
# alias 'lowest'='$HOME/shellScripts/lowest.sh'
# alias 'normal'='$HOME/shellScripts/normal.sh'

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
export PS1='\[\033[0;32m\]\u@\h: \[\033[0;34m\]\w\n\[\033[0;31m\]$(parse_git_branch)\[\033[1;32m\]\[\033[0m\]-> '

export PATH="$HOME/.cargo/bin:$PATH"
export DISABLE_AUTO_TITLE=true
export PATH="$HOME/.source/bin:$PATH"
