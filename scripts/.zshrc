export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:~/bin

ZSH_THEME="eastwood"

plugins=(git)

source $ZSH/oh-my-zsh.sh
alias r="ranger"
alias v="nvim"
alias c="clear"
alias cdc="cd ~/.config;ls"
alias cdd="cd ~/repos/docs/maths;ls" 
alias z="zathura"
