# path

export GPG_TTY=$(tty)
export EDITOR="vim"

PROMPT='%F{blue}%n%f %F{yellow}%~ %f%# '

# aliases
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias archx86="env /usr/bin/arch -x86_64 /bin/zsh --login"
alias archarm="env /usr/bin/arch -arm64 /bin/zsh --login"

