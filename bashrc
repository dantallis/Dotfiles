# .bashrc

# User specific aliases and functions
alias ls='ls -F --color=auto'
eval "$(dircolors -b)"
alias itree='tree -I "*~"'

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

if [ -f /usr/bin/keychain ]; then
	eval `keychain --eval id_rsa`
fi
