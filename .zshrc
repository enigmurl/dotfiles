# gcc/clang  workarounds
export PATH="/usr/bin/python3:/usr/bin/pip3:$PATH"
export PATH="/usr/local/bin/g++:/usr/local/bin/gcc:$PATH"
alias clang="clang -isysroot `xcrun --show-sdk-path`"
alias clang++="clang++ -isysroot `xcrun --show-sdk-path` --std=gnu++17"

export GPG_TTY=$(tty)
export EDITOR="vim"

# for getting ssh to work properly
export TERM=xterm-256color

PROMPT='%F{blue}%n%f %F{yellow}%~ %f%# '

# aliases
alias archx86="env /usr/bin/arch -x86_64 /bin/zsh --login"
alias archarm="env /usr/bin/arch -arm64 /bin/zsh --login"

alias esoteric-reset="ssh root@esoteric.manubhat.com 'source stage/server-update.sh'"

alias hl=rg --passthru

# zsh
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey "^?" backward-delete-char

# add auto complete
autoload -Uz compinit
compinit

