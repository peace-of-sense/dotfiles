# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

export PS1="\[\e[38;5;216m\]\u\[\e[38;5;220m\]∮\[\e[38;5;222m\]\h \[\e[38;5;195m\]\w \[\033[0m\]$ "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/peaceofsense/anaconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/peaceofsense/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/peaceofsense/anaconda3/etc/profile.d/conda.sh"
	else
		export PATH="/home/peaceofsense/anaconda3/bin:$PATH"
	fi
fi
#unset __conda_setup
# <<< conda initialize <<<
