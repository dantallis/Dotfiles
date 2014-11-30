# .bash_profile

# Initialize keychain if needed
if [ -r $HOME/.ssh/identity -o -r $HOME/.ssh/id_dsa -o -r $HOME/.ssh/id_rsa ]; then
 	if [ ! -d $HOME/.keychain ]; then
	        keychain
        fi
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:$HOME/local/bin

export PATH
unset USERNAME
export LESS=-X

export WORKON_HOME=~/Envs PROJECT_HOME=~/Projects
mkdir -p $WORKON_HOME $PROJECT_HOME
if [ -f /etc/bash_completion.d/virtualenvwrapper ]; then
    source /etc/bash_completion.d/virtualenvwrapper
else
    source /usr/local/bin/virtualenvwrapper.sh
fi
