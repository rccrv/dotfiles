# Go #
export PATH="$HOME/.userland/software/go/bin:$PATH"

# Python #
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONSTARTUP=$HOME/.pythonrc
export PATH="$HOME/.userland/software/python3/bin:$PATH"
python3 -m pipx ensurepath 1> /dev/null 2>&1
export PATH="$HOME/.local/bin:$PATH"

# Rust #
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"

# Node #
eval "$(fnm env)"
export PNPM_HOME="/home/ricardo/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Julia #
export PATH="$HOME/.userland/software/julia/bin:$PATH"

# R $
export R_HISTFILE=~/.Rhistory
