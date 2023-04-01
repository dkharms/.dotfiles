# Common
export VISUAL="hx"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(git gitignore golang zsh-autosuggestions docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export BAT_THEME="ansi"

# Custom
ENV="personal"

if [[ $ENV == "personal" ]]; then
  export PATH="$HOME/go/bin:$PATH"
else
  echo "TODO: ya tool go env GOROOT"
  echo "TODO: ya tool go env GOPATH"
fi

# System aliases
alias ls=exa
alias tree="exa --tree"

## Python aliases
alias python=python3
alias pip=pip3

# Cat aliases
alias cat=bat

if [[ $ENV == "personal" ]]; then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

if [[ $ENV == "work" ]]; then
  eval "$(starship init zsh)"
fi
