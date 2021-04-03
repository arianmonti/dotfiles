source /home/amonti/antigen.zsh

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-autosuggestions

alias c="clear"
alias open="xdg-open"
alias untar="tar -xzvf "
alias wget="wget -c "
alias dnf="sudo dnf install "
alias dnfr="sudo dnf remove "
alias dnfls="sudo dnf list installed "
alias :q="exit"
alias g="git"
alias gommit="git commit -m -S "
alias gush="git push "
alias gadd="git add "
alias gadda="git add -A"
alias gull="git pull "
alias gusername="git config --global user.username"
alias gmail="git config --global user.email"
alias gkey="git config --global user.signingkey"
alias vi="nvim"

# ZSH_THEME_GIT_PROMPT_PREFIX="%F{082}%B"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
# ZSH_THEME_GIT_PROMPT_DIRTY="%F{202}%B*%b"
# ZSH_THEME_GIT_PROMPT_CLEAN="%F{blue}"
# 
# function __git_prompt_git() {
#   GIT_OPTIONAL_LOCKS=0 command git "$@"
# }
# 
# function parse_git_dirty() {
#   STATUS=$(__git_prompt_git status ${FLAGS} 2> /dev/null | tail -1)
#   if [[ -n $STATUS ]]; then
#     echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
#   else
#     echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
#   fi
# }
# 
# git_custom_status() {
# 		# local cb=$(git_current_branch)
# 		local cb=$(git symbolic-ref --short HEAD 2> /dev/null)
# 		if [ -n "$cb" ]; then
# 				echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$cb%b$ZSH_THEME_GIT_PROMPT_SUFFIX"
# 		fi
# }
# 
# # PROMPT=' %{$fg[cyan]%}%c%{$reset_color%}'
# setopt prompt_subst
# autoload -Uz vcs_info
# PROMPT=' %F{cyan}%c%f'
# PROMPT+=' $ '
# RPROMPT='$(git_custom_status)'

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme ~/aban --loc=aban
antigen apply
