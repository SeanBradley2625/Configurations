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

PATH+=":/home/senb/.bin/:/home/senb/.ghcup/bin"

test -s ~/.alias && . ~/.alias || true

PS1='\[\e[90m\]{\[\e[34m\]\t\[\e[90m\]}\[\e[0m\] [\[\e[94m\]\u\[\e[97m\]@\[\e[94m\]\h\[\e[0m\]] \[\e[97m\]\w\n\[\e[0m\]\\$> '

[ -f "/home/senb/.ghcup/env" ] && . "/home/senb/.ghcup/env" # ghcup-env

set -o vi

# Deploy a nice looking fastfetch
alias nf="echo; fastfetch --color blue; echo; dysk /home --color yes | sed 's/^/  /'; echo"
# nf
