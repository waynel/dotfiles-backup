autoload colors && colors
setopt prompt_subst

git_branch () {
  ref=$(/usr/bin/git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})
  if [[ $ref == "" ]]; then
    echo ""
  else
    echo %{$fg[cyan]%}git: { %{$fg[red]%}$ref%{$reset_color%}%{$fg[cyan]%} }%{$reset_color%}
  fi
}

git_dirty () {
  st=$(/usr/bin/git status 2> /dev/null | tail -n 1)
  if [[ $st == "" ]]; then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]; then
      echo %{$fg[green]%}✓%{$reset_color%}
    else
      echo %{$fg[red]%}✗%{$reset_color%}
    fi
  fi
}

export PROMPT='%{$fg_bold[red]%}➜  %{$reset_color%}%{$fg[blue]%}%c%{$reset_color%} $(git_branch) $(git_dirty) '

