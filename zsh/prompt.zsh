function precmd {
    local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 3 ))

    PR_FILLBAR=""
    PR_PWDLEN=""
    
    local pwdsize=${#${(%):-%~}}
    local size="$(($TERMWIDTH - ($pwdsize + 3)))"
    if [[ "$pwdsize" -gt $TERMWIDTH ]]; then
      ((PR_PWDLEN=$TERMWIDTH))
    else
        PR_FILLBAR=${(l.$size..―.)}
        if [[ "$TERM" == "linux" ]]; then
            PR_FILLBAR="\${(l.(($TERMWIDTH - ($pwdsize - 3 + 3 )))..${PR_HBAR}.)}"
                if [[ "$TERM" == "linux" ]]; then
                    PR_FILLBAR="\${(l.(($TERMWIDTH - ($pwdsize + 3 )))..${PR_HBAR}.)}"
                fi
        fi
    fi

}
ruby_version() {
  echo " $(ruby -v | awk '{print $2}')"
}
local conditional_prompt="%(?,%{$fg[231]%}❯%{$reset_color%},%{$fg[red]%}❯%{$reset_color%})"
local pwd="%{%F{green}%}%~"
local right=$'%{%F{238}%}$(ruby_version)%{%f%}$(git_cwd_info)%{%E%}'
local top='${pwd}%{%F{238}%}%}${PR_FILLBAR}%{%f%}'

export PROMPT="${top}
${conditional_prompt} "
export RPROMPT="${right}"

