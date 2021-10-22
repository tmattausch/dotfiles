export ZSH="$HOME/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

#source /usr/local/bin/aws_completer

ZSH_THEME="tjkirch-custom"

plugins=(
  git
  kubectl
)

source $ZSH/oh-my-zsh.sh

# ALIAS SETTING
alias a=adfs-cli-macos
alias k="kubectl"
alias kg="kubectl get"
alias kgw="kubectl get -o wide"
alias kube="kubectl"
alias h="history -E"
alias c="cal -A 2"
alias t="terraform"

alias kctx="kubectx"
alias ctxkube="kubectx"
alias nskube="kubens"

zstyle ':completion:*:ssh:*' hosts off

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000023
SAVEHIST=1000023
setopt extended_history
setopt append_history
setopt hist_ignore_all_dups
unsetopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history

setopt CORRECT
setopt AUTO_MENU

setopt autolist
unsetopt listambiguous
setopt NO_beep
setopt ALWAYS_LAST_PROMPT
