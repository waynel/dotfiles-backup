git-local-remote () {
  local branch=$1
  git checkout -b $branch origin/$branch
}
