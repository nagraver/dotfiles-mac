export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"
eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias wu="wg-quick up mac"
alias wd="wg-quick down mac"
alias ws="sudo wg show"
plugins=(git)

source $ZSH/oh-my-zsh.sh
