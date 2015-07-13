#       -----ALIASES-----

#COINFLIP
alias coinflip='python ~/python/coinflip/coinflip.py'

#SUDO WOODO
alias sudo='sudo '
alias woodo='sh ~/.woodo.sh'

#REDO
alias please='sudo $(history -p \!\!)'

#Simplified Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

#TMUX FIX?
alias tmux="TERM=screen-256color-bce tmux -2"

#CLOCK
alias clock='while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &'

#HIGHLIGHTED GREP
alias grep="grep --color=auto"

#Shutdown
alias goodbye='sudo shutdown -h now'

#THEFUCK

alias fuck='eval $(thefuck $(fc -ln -1))'
alias FUCK='fuck'

#Farore

alias farore='if [[ "$f" == "" ]]; then f=$(pwd); else cd $f; unset f; fi'

# Figlet Clock
alias clock = 'while true; do tput clear; date + "%H : %M : %S" | figlet ; sleep 1; done'

#VSCode Launcher

code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
