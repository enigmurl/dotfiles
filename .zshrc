# gcc/clang  workarounds
export PATH="/usr/local/bin/g++:/usr/local/bin/gcc:$PATH"
alias clang="clang -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk"
alias clang++="clang++ -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk --std=gnu++17"

export GPG_TTY=$(tty)
export EDITOR="vim"

PROMPT='%F{blue}%n%f %F{yellow}%~ %f%# '

# aliases
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias archx86="env /usr/bin/arch -x86_64 /bin/zsh --login"
alias archarm="env /usr/bin/arch -arm64 /bin/zsh --login"

# zsh
bindkey -v
bindkey "^?" backward-delete-char

