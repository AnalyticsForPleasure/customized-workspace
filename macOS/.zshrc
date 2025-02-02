
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/Users/cohgi01/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
#export TMUXINATOR_CONFIG='~/.tmuxinator'
# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias  tkill="tmux kill-server"
alias ll="ls -la"
alias  mmux="tmuxinator backend-work"
alias  history="fc -li 1"
alias  k="kubectl"

alias tunnel-develop='kubectl get pods -l role=mongo -o jsonpath="{.items[0].metadata.name}"'
alias port-forward-develop='kubectl port-forward "$(tunnel-develop)" 27018:27017'

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
source <(kubectl completion zsh)

# k get pods --all-namespaces  | grep jenkins-qa
alias port-forward-qa="kubectl --namespace=ns-jenkins port-forward dpl-mongo-79-jenkins-qa-3717381995-xrnzq 27019:27017"


alias port-forward-ci="kubectl --namespace=ns-jenkins port-forward dpl-mongo-67-jenkins-ci-2339133084-f2rdb 27018:27017"

#export DISABLE_AUTO_TITLE=true

fpath=(~/.zsh $fpath)
source ~/.bin/tmuxinator.zsh
eval "$(fasd --init auto)"    # Get fasd working, initialization code

export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"
export PATH="~/useful-scripts:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"
export BZDEV_ENV_ID=91

alias unit-tests-db="zsh ~/useful-scripts/unit-test-environment.zsh"
alias get-php-errors="zsh ~/useful-scripts/get-php-errors.zsh"
alias smart-tail="zsh ~/useful-scripts/smart-tail.zsh"
alias connect-bza-pod="zsh ~/useful-scripts/connect-bza-pod.zsh"
alias connect-mongo-pod="zsh ~/useful-scripts/connect-mongo-pod.zsh"