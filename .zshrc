export PATH="/opt/homebrew/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
export EDITOR=zed

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
eval "$(starship init zsh)"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # should be installed with brew

alias lzd='lazydocker'
