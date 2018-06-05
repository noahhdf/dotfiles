# ZSH Theme emulating resembling the fish pythonista shell.
# Author: Noah Biederbeck

_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

_dir() {
  echo $(pwd | sed 's/\/home\/[a-zA-Z0-9]*/~/g')
}

user_color='yellow'
dir_color='green'
git_color='yellow'

# PROMPT='%{$fg[$user_color]%}$(whoami) %{$reset_color%}in %{$fg[$dir_color]%}$(_dir)%{$fg_bold[$git_color]%}$(git_prompt_info) %{$reset_color%}$ '
PROMPT='%{$fg[$dir_color]%}$(_dir)%{$fg_bold[$git_color]%}$(git_prompt_info) %{$reset_color%}$ '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
# RPROMPT='${return_status}%{$fg_bold[black]%}$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
# RPROMPT='${return_status}%{$fg_bold[black]%}$(git_prompt_info)%{$reset_color%}'
RPROMPT='${return_status}'

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"
