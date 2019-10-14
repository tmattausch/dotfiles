ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

autoload colors
colors

    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
    lgreen="%F{100}"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}
function aws_name {
    adfsprofile=$(cat ~/.aws/current_profile |  xargs)
    echo "%{$FG[012]%}[$adfsprofile]%{$reset_color%}"
}

PROMPT='%{$FG[009]%}%n%{$reset_color%}@%{$FG[010]%}%m%{$reset_color%}: %{$FG[011]%}%~%{$reset_color%}$(git_prompt_info) $(aws_name)
%_☃ → '
RPROMPT='%{$FG[010]%}[%*]%{$reset_color%}'