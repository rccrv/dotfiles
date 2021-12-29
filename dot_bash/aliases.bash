# Base #
alias df="df -h"
alias less="less -cR"
alias ls="ls --color=auto"
alias grep="grep -E --color=auto"
alias rm="rm -vi"

# Console #
alias vi="nvim"
alias vim="nvim"
alias lvim="/usr/bin/vim"
alias tmux="tmux attach || tmux"

# Network #
alias wget="wget -c"

# Encoding conversion #
alias iso2utf="iconv -f iso-8859-1 -t utf-8"
alias utf2iso="iconv -f utf-8 -t iso-8859-1"

# BGP AS lookup #
alias bgpwhois="whois -h whois.bgpmon.net"

# Intepreters #
alias bc="bc -lq"
alias R="R -q --no-save"

# X11 software #
alias xclip="xclip -selection c"
if [ $TERM = "xterm-kitty" ]; then
  alias ssh="kitty +kitten ssh"
  alias icat="kitty +kitten icat"
fi

# uncompression #
alias un7z="7z x"
