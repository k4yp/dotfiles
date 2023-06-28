export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:~/bin

ZSH_THEME="eastwood"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias v="nvim"
alias c="clear"
alias cdc="cd ~/.config;ls"
alias cdd="cd ~/docs/maths;ls" 
alias cdr="cd ~/repos;ls"
alias s="sioyek"
alias ls="exa --icons -1"
