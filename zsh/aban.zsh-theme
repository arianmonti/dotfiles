ZSH_THEME_GIT_PROMPT_PREFIX="%F{082}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{202}%B*"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{blue}"


git_custom_status() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT=' %{$fg[cyan]%}%c%{$reset_color%}'
PROMPT+=' $ '
RPROMPT='$(git_custom_status)'
