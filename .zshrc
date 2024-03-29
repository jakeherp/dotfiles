export GITHUB_TOKEN="d895a61aff95996a1a0a87077709dda6c044e249"
export PATH="/Users/jacobherper/.deno/bin:$PATH"
export PATH="/Users/jacobherper/flutter/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# User configuration
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:./node_modules/.bin"
export START="/Users/jacobherper/Development"

if [[ $PWD == $HOME ]]; then
    cd $START
fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='code'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

alias ll="ls -la"
alias nis="npm install --save "
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias ip="curl http://ipecho.net/plain; echo"
alias t="tree -L"

alias push="git push origin "
alias gac="git add . && git commit -a -m "
alias gc="git commit -a -m "
alias gs="git status"
alias ga="git add "
alias gcl="git clone "
alias grm="git rm"
alias gall="git add -A"
alias gf="git fetch --all --prune"
alias gclean="git clean -fd"
alias gm="git merge"
alias gmv="git mv"
alias gp="git push"
alias gpush="git push"
alias gpom="git push -u origin master"
alias gl="git pull"
alias gpull="git pull"
alias gr="git remote"
alias grv="git remote -v"
alias gra="git remote add"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ ! -s /Users/jacobherper/.travis/travis.sh ] || source /Users/jacobherper/.travis/travis.sh

fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

# Path to your oh-my-zsh installation.
export ZSH="/Users/jacobherper/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git k node vscode yarn npm z zsh-autosuggestions)

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW

# POWERLEVEL10K
# OH-MY-ZSH-THEMES

# OH-MY-ZSH-PLUGINS
# FIG
# BIND keys like:
    # bindkey "^j" down-line-or-beginning-search
# [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && 
    # . "/usr/local/etc/profile.d/bash_completion.sh"
    # eval "$(rbenv init -)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jacobherper/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh


##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi

source $ZSH/oh-my-zsh.sh
