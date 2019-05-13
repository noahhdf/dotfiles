# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# conda activate cta
alias 'ls'='ls --color=no'
# alias 'vim'='nvim'
# alias 'git'='~/.linuxbrew/bin/git'
alias '..'='cd ..'
alias 'gits'='git status --short'
alias 'jn'='jupyter-notebook --port=2702 --no-browser'

# Root with python3
# source /opt/root/5.34.36-py3/bin/thisroot.sh

# Mars
export MARSSYS=/opt/MAGIC/Mars_V2-18-4
export LD_LIBRARY_PATH=$MARSSYS:$LD_LIBRARY_PATH
export PATH=$MARSSYS:$PATH

export LEHRSTUHLVERSUCH='/net/big-tank/POOL/projects/magic/lehrstuhlversuch'

alias 'bigtank'='cd /net/big-tank/POOL/users/nbiederbeck'
alias 'utopcpu'='top -o %CPU -u $USER'
alias 'utopmem'='top -o %MEM -u $USER'
alias 'topcpu'='top -o %CPU'
alias 'topmem'='top -o %MEM'

# Anaconda Python
. /opt/anaconda/etc/profile.d/conda.sh
conda activate py37

source ~/.bash_colors
PS1="$(clr_red '[vollmond]') $PS1"
