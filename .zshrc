export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # should be installed with brew

eval "$(starship init zsh)"
