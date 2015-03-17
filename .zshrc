# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERMINAL=urxvt

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

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:~/.config/bspwm/panel"
export LESS="-F -X -R"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export LD_LIBRARY_PATH=/home/govind/phantom/ext_libs/libmongoc/libs:/home/govind/phantom/ext_libs/libbson/libs:$LD_LIBRARY_PATH
