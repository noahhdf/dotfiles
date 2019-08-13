# .bash_profile

# Greet the user
echo "Hello ${USER}"

# Export ipython commands to tmp folder (mounted homes)
mkdir -p "/tmp/${USER}"
export IPYTHONDIR="/tmp/${USER}"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$PATH:$HOME/.linuxbrew/bin

# export PATH
# export PATH="/net/nfshome/home/nbiederbeck/.linuxbrew/bin:$PATH"
# export PATH="/net/nfshome/home/nbiederbeck/.linuxbrew/sbin:$PATH"
