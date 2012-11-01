current_branch () {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

git-local-remote () {
  local branch=$1
  git checkout -b $branch origin/$branch
}
