export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git gitignore golang zsh-autosuggestions docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export BAT_THEME="ansi"
export PATH="$HOME/go/bin:$PATH"

# System aliases
alias ls=exa
alias tree="exa --tree"

## Python aliases
alias python=python3
alias pip=pip3

# Cat aliases
alias cat=bat

if [[ $(uname -p) == "arm" ]]; then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

eval "$(starship init zsh)"

