# Common
export VISUAL="hx"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,underline"

plugins=(git gitignore golang zsh-autosuggestions docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export BAT_THEME="ansi"
export TERM="xterm-256color"
export HOMEBREW_NO_AUTO_UPDATE=1

# Custom
ENV=$(eval cat $HOME/.dotenv)

if [[ $ENV == "work" ]]; then
  eval "arc mount"
fi

if [[ $ENV == "personal" ]]; then
  export PATH="$HOME/go/bin:$PATH"
else
  export PATH="$HOME/arcadia:$PATH"
  export GOROOT=$(ya tool go --print-toolchain-path)
  export PATH=$(ya tool go --print-toolchain-path)/bin:$PATH
  export PATH=$(go env GOPATH)/bin:$PATH
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

function print-colors() {
  printf "|039| \033[39mDefault \033[m  |049| \033[49mDefault \033[m  |037| \033[37mLight gray \033[m     |047| \033[47mLight gray \033[m\n"
  printf "|030| \033[30mBlack \033[m    |040| \033[40mBlack \033[m    |090| \033[90mDark gray \033[m      |100| \033[100mDark gray \033[m\n"
  printf "|031| \033[31mRed \033[m      |041| \033[41mRed \033[m      |091| \033[91mLight red \033[m      |101| \033[101mLight red \033[m\n"
  printf "|032| \033[32mGreen \033[m    |042| \033[42mGreen \033[m    |092| \033[92mLight green \033[m    |102| \033[102mLight green \033[m\n"
  printf "|033| \033[33mYellow \033[m   |043| \033[43mYellow \033[m   |093| \033[93mLight yellow \033[m   |103| \033[103mLight yellow \033[m\n"
  printf "|034| \033[34mBlue \033[m     |044| \033[44mBlue \033[m     |094| \033[94mLight blue \033[m     |104| \033[104mLight blue \033[m\n"
  printf "|035| \033[35mMagenta \033[m  |045| \033[45mMagenta \033[m  |095| \033[95mLight magenta \033[m  |105| \033[105mLight magenta \033[m\n"
  printf "|036| \033[36mCyan \033[m     |046| \033[46mCyan \033[m     |096| \033[96mLight cyan \033[m     |106| \033[106mLight cyan \033[m\n"
}

export YANDEX_XML_CONFIG="$HOME/configs/local.cfg.xml"
