# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="govind"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

alias vi='vim'
alias Z='. ~/.zshrc && clear'
alias viR='vim ~/.Xresources && xrdb -merge ~/.Xresources'
alias viV='vim ~/.vimrc'
alias viZ='vim ~/.zshrc && . ~/.zshrc && clear'
alias H='history | grep'
alias build='ssh build@10.10.0.140'
alias phab='ssh phab@10.10.0.141'
alias settime='sudo systemctl restart ntpd'
alias vless='/usr/share/vim/vim74/macros/less.sh'
alias stush='git stash && git pull --rebase && git stash pop && git push'
alias glol='git log --pretty="format:%Cgreen%h%Creset:%Cblue%ci%Creset:%s:%Cblue%d%Creset"'
alias tigme='tig --author=govind --no-merges'

function filefind() {
    if [ -z "$3" ]; then
        find "$1" -type f -exec grep -Hne "$2" {} 2> /dev/null  \; 
    else
        find "$1" -type f -iname "$3" -exec grep -Hne "$2" {} 2> /dev/null \; 
    fi
}
function JSON() { python2.7 -m json.tool }
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:~/.config/bspwm/panel"
export LESS="-F -X -R"
stty -ixon
unsetopt AUTO_CD
unsetopt share_history
