# Path to your oh-my-zsh installation.
  export ZSH=/home/charles/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunaku"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( ruby wd sudo command-not-found common-aliases pip python web-search vi-mode git fasd zsh-syntax-highlighting)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

function mkcd {  #make dir and cd into it
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

function cl()
{
     builtin cd "$*" && ls -a
 }
# Other aliases
alias del="rm -rf"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias doctest='python -m doctest'
alias ~='cd ~'
alias c='clear'
alias switch='git checkout'
alias chrome='google-chrome &>/dev/null&'
alias copy='xclip -selection clipboard'
alias zshrc='vim ~/.zshrc'
alias playlist='vlc https://www.youtube.com/watch?v=tYIlKkOSW2s&list=PLT8NDfwV2W8r6F9njmx1JmwN18JQ56kN9'
alias gdq='livestreamer twitch.tv/gamesdonequick source'
alias sds='livestreamer twitch.tv/showdownsmash source'
alias asgore='vlc https://www.youtube.com/watch\?v\=pcamjcoRmrQ'
alias cs169='chrome https://edge.edx.org/courses/course-v1:BerkeleyX+CS169+Spring2016/'
alias v='f -e vim'

#plugin help
alias vimode='google-chrome https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vi-mode'
alias zplug='google-chrome https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins'
alias fasdhelp='google-chrome https://github.com/clvv/fasd'

#some vim mappings
bindkey -M viins 'jk' vi-cmd-mode

#virtualenv
export WORKON_HOME="$HOME/.virtualenvs" 
source /usr/local/bin/virtualenvwrapper.sh 
export AUTOFEATURE=true


# Add local aliases.
if [ -f ~/.local_aliases ]; then
    source ~/.local_aliases
fi

# Add 256 colors
export TERM='xterm-256color'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /home/charles/.travis/travis.sh ] && source /home/charles/.travis/travis.sh
