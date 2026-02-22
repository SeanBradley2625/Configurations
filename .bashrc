# Load some aliases
test -s $HOME/.alias && . $HOME/.alias || true

# Add some stuff to the path
PATH+=":$HOME/.bin/:$HOME/.ghcup/bin"

# Sets the prompt looks something like this:
# {time} [user@system] path
# $> commands

PS1='\[\e[90m\]{\[\e[34m\]\t\[\e[90m\]}\[\e[0m\] [\[\e[94m\]\u\[\e[97m\]@\[\e[94m\]\h\[\e[0m\]] \[\e[97m\]\w\n\[\e[0m\]\\$> '

# Sets vi mode active, giving the bash prompt vi bindings (YAY!!!)
set -o vi

# Haskell environment setup
HASKELLVERSION="9.6.7"
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env
. "$HOME/.local/bin/env"

# Cute function that punishes mistypes
#function command_not_found_handle {
#  sl
#  clear
#}
