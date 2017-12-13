# My Oh-My-ZSH.
export ZSH=/cygdrive/c/Users/aossa/.oh-my-zsh
# The Theme
ZSH_THEME=raveneyex
# Update every two weeks
export UPDATE_ZSH_DAYS=15
# Auto-correct commands .
ENABLE_CORRECTION="true"
# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
# History timestamps format
HIST_STAMPS="dd.mm.yyyy"
# Basic Plugins
plugins=(
  git
  npm
  yarn
)

source $ZSH/oh-my-zsh.sh
# SSH Keys
export SSH_KEY_PATH="~/.ssh/rsa_id"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ALIASES
alias ls="ls -a"