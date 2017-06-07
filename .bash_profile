# USE OPTIONS OF DEFAULT COMMANDS
alias '..'='cd ..'
alias 'rm'='rm -v'
alias 'mv'='mv -v'
alias 'cp'='cp -v'
alias 'mkdir'='mkdir -p'
alias 'neofetch'='clear && neofetch'
alias 'ls'='ls -h'
alias 'll'='ls -al'
alias 'la'='ls -a'
alias 'pdfpandoc'='pandoc -r markdown -w latex -o'
alias 'speedtest'='time seq -f "test %g"'
alias ':q'='exit'


# SCP
alias 'scp'='scp -i $HOME/.ssh/id_rsa.phido'
alias 'copyplots'='rsync -avzuh --progress -e ssh nbiederbeck@vollmond:bachelorArbeit/ggplots/*  ~/Uni/BA/BAthesis/ggplots/'


# TIME MAKE AND PYTHON
alias 'make'='time make'
alias 'python'='time python'


# UNIVERSITY COMMANDS
# alias 'truee'='/home/noah/.local/truee-root6/bin/truee'


# EASIER USAGE OF JUPYTER NOTEBOOK
alias 'notebook'='jupyter notebook' # && nbconvert *.ipynb'
alias 'nbconvert'='time jupyter nbconvert --to python'


# SET DISPLAY BRIGHTNESS
# alias 'low'='$HOME/shellScripts/low.sh'
# alias 'high'='$HOME/shellScripts/high.sh'
# alias 'lowest'='$HOME/shellScripts/lowest.sh'
# alias 'normal'='$HOME/shellScripts/normal.sh'


# SHOW TRAFFIC OF WOHNHEIM INTERNET
# alias 'traffic'='lynx gateway.engel/traffic.php'


# MANIPULATING PICTURES
# alias "median"="convert *.jpg -evaluate-sequence median OUT.jpg"


# ADDED BY ANACONDA2 4.3.1 INSTALLER
export PATH="/Users/nbiederbeck/anaconda2/bin:$PATH"
# ADDITIONAL PYTHON2 BEHAVIOUR
alias 'python2'='/Users/nbiederbeck/anaconda2/bin/python'
alias 'virtualenv2'='/Users/nbiederbeck/anaconda2/bin/virtualenv'
alias 'conda2'='/Users/nbiederbeck/anaconda2/bin/conda'
# ADDED BY ANACONDA3 4.3.1 INSTALLER
export PATH="/Users/nbiederbeck/anaconda3/bin:$PATH"


# HQM TEX
alias 'hqm'='cd /Users/nbiederbeck/Uni/hqm && git pull'
# FP TEX
alias 'fp'='cd /Users/nbiederbeck/Uni/fp && git pull'
# BOT
alias 'bot'='cd /Users/nbiederbeck/Git/HPkU4hwcvr_bot && git pull'


# BASH PROMPT
# ADD GIT BRANCH IF ITS PRESENT TO PS1
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  }
export PS1='\[\033[0;32m\]\u@\h: \[\033[0;34m\]\w\n\[\033[0;31m\]$(parse_git_branch)\[\033[1;32m\]\[\033[0m\]-> '
