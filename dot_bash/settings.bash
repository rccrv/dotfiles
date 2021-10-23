# Prompt #
OSNAME=$(uname -s)
PS1='\u@\h[${OSNAME,}] (\W) \$ '

# History settings #
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=10000
HISTFILESIZE=2000
shopt -s histappend

# Do not generate coredumps #
ulimit -c 0

# vim as the default editor #
export EDITOR=vim


# FZF settings #
export FZF_DEFAULT_COMMAND='fd --type f'

# Create machine specific if it's not there #
if [ ! -e $HOME/.bash/machine.bash ]; then
  touch $HOME/.bash/machine.bash
  echo "# Machine specific configurations #" > $HOME/.bash/machine.bash
fi
