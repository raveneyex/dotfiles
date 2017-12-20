# oh-my-zsh Raveneyex theme

### Git 
ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[green]%}±%{$reset_color%}%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%}▴%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[magenta]%}▾%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[yellow]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"

git_branch () {
	ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  	ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  	echo "${ref#refs/heads/}"
}

git_status() {
	_STATUS=""

	# check status of files
	_INDEX=$(command git status --porcelain 2> /dev/null)
	if [[ -n "$_INDEX" ]]; then
		if $(echo "$_INDEX" | command grep -q '^[AMRD]. '); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_STAGED"
		fi
		if $(echo "$_INDEX" | command grep -q '^.[MTD] '); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNSTAGED"
		fi
		if $(echo "$_INDEX" | command grep -q -E '^\?\? '); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNTRACKED"
		fi
		if $(echo "$_INDEX" | command grep -q '^UU '); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNMERGED"
		fi
	else
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_CLEAN"
	fi

	# check status of local repository
	_INDEX=$(command git status --porcelain -b 2> /dev/null)
	if $(echo "$_INDEX" | command grep -q '^## .*ahead'); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_AHEAD"
	fi
	if $(echo "$_INDEX" | command grep -q '^## .*behind'); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_BEHIND"
	fi
	if $(echo "$_INDEX" | command grep -q '^## .*diverged'); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_DIVERGED"
	fi

	if $(command git rev-parse --verify refs/stash &> /dev/null); then
		_STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_STASHED"
	fi

	echo $_STATUS
}

git_prompt () {
	local _branch=$(git_branch)
	local _status=$(git_status)
	local _result=""
	if [[ "${_branch}x" != "x" ]]; then
		_result="$ZSH_THEME_GIT_PROMPT_PREFIX$_branch"
		if [[ "${_status}x" != "x" ]]; then
		_result="$_result $_status"
		fi
		_result="$_result$ZSH_THEME_GIT_PROMPT_SUFFIX"
	fi
	_result="$_result"
	echo $_result
}

### User data
_ME="𝕽𝖆𝖛𝖊𝔫𝖊𝖞𝖊𝖝"
_ROOT="𝕽𝖔𝖔𝖙"
_HAIL_SATAN="𝕳 𝖆 𝖎 𝖑  𝕾 𝖆 𝖙 𝖆 𝖓"
_machine="%{$fg_bold[white]%}%m%{$reset_color%}"
_path="%~"
_at="%{$fg_bold[red]%}[at]%{$reset_color%}"
_at="%{$fg_bold[red]%} @ %{$reset_color%}"
_machine_data="$_path$_at$_machine"

if [[ $EUID -eq 0 ]]; then
	_USERNAME="%{$fg_bold[magenta]%}$_ROOT"
  	_INDICATOR="%{$fg_bold[magenta]%}> #"
else
  	_USERNAME="%{$fg_bold[red]%}$_ME"
  	_INDICATOR="%{$fg_bold[red]%}> $"
fi
_USERNAME="$_USERNAME%{$reset_color%}"
_INDICATOR="$_INDICATOR%{$reset_color%}"

pre_prompt() {
	echo "$_HAIL_SATAN"
    echo "$_machine_data"
    echo "$_USERNAME"
}

exit_prompt() {
	echo "$_HAIL_SATAN"
}

raveneyex_preprompt() {
    print
    print -rP '$(pre_prompt)'
}

raveneyex_exit() {
	print
  	print -rP '$(exit_prompt)'
}

setopt prompt_subst
PROMPT='$_INDICATOR '
RPROMPT='$(git_prompt)'

autoload -U add-zsh-hook
add-zsh-hook precmd raveneyex_preprompt
add-zsh-hook zshexit raveneyex_exit