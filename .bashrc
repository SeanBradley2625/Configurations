PATH+=":/home/senb/.bin/:/home/senb/.ghcup/bin"

test -s ~/.alias && . ~/.alias || true

PS1='\[\e[90m\]{\[\e[34m\]\t\[\e[90m\]}\[\e[0m\] [\[\e[94m\]\u\[\e[97m\]@\[\e[94m\]\h\[\e[0m\]] \[\e[97m\]\w\n\[\e[0m\]\\$> '

[ -f "/home/senb/.ghcup/env" ] && . "/home/senb/.ghcup/env" # ghcup-env

set -o vi

# Deploy a nice looking fastfetch
alias nf="echo; fastfetch --color blue; echo; dysk --color yes | sed 's/^/  /'; echo"
# nf


# General
alias ls="ls --color"
alias mupdf="mupdf"
alias googlemaps="qtws /usr/share/qtws-apps/google-maps/google-maps.qtws"

# HDL/FPGA
#XILINX_VITIS="/mnt/onetb/Xilinx/Vitis/2024.2/"
source /mnt/onetb/Xilinx/vivado/pkg/vivado/opt/Xilinx/Vivado/2024.2/settings64.sh
alias vivado="vivado -nolog -nojournal"

# Haskell
HASKELLVERSION="9.6.7"
# alias ghci="ghci-$HASKELLVERSION"
# alias ghc="ghc-$HASKELLVERSION"

#function command_not_found_handle {
#  sl
#  clear
#}

# phoneinfoga
NUMVERIFY_API_KEY="c70010da541e8c924d2d3bff0a60a250"
GOOGLECSE_CX=""
GOOGLE_API_KEY=""

. "$HOME/.local/bin/env"
