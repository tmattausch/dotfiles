export ZSH="$HOME/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

#source /usr/local/bin/aws_completer

ZSH_THEME="tjkirch-custom"

plugins=(
  git
  kubectl
)

source $ZSH/oh-my-zsh.sh

# ALIAS SETTING
alias a=adfs-cli-macos

zstyle ':completion:*:ssh:*' hosts off

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=2048
SAVEHIST=2048
setopt append_history
setopt hist_ignore_all_dups
unsetopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history

CORPNTP=$(cat ~/.corpntp)
CORPSSID=$(cat ~/.corpssid)
SSID=$(networksetup -getairportnetwork en0 | cut -d ' ' -f 4)

if [[ "$SSID" != "$CORPSSID" ]] && ping -c 1 -t 1 $CORPNTP &> /dev/null; then
  source ~/.zshproxy
else
  :
fi
