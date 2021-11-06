export PATH="$HOME/.userland/software/go/bin:$PATH"

# Python #
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PYTHONSTARTUP=$HOME/.pythonrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init --path)"
#fi

# Rust #
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"

# Node #
eval "$(fnm env)"

# Java #
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
