local CUTE_SUCCESS="%{$fg[yellow]%}_(:з」∠)_"
local CUTE_FAILURE="%{$fg[red]%}_(:<」∠%)_[%?]"
local CUTE="%(0?.$CUTE_SUCCESS.$CUTE_FAILURE)"

__cwd () {
    local CWD="$(print "$PWD" | sed -e "s|^$HOME|~|")"
    if test ${#CWD} -gt 50; then
        echo "$(print "$CWD" | sed -e 's|\(\.\{0,1\}[^/]\)[^/]*/|\1/|g')"
    else
        echo $CWD
    fi
}

PROMPT='%B%{$fg[green]%}%n@%m%{$fg[white]%}: \
%{$fg[blue]%}$(__cwd) \
$(git_prompt_info)
${CUTE} %{$fg[white]%}%{$reset_color%}$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}ζ%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}±"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
