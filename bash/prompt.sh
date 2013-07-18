ch_fg_col(){
echo -en "\033[0;$1m"
#nounderline; color-code
}
underline_prompt(){
  pwd_relative=`pwd | sed -e 's/\/Users\/[^\/]*/~/g'`
  ruby_version=`ruby -v | awk '{print $2}'`
  hostname=`uname -n | sed 's/\..*//g'`
  host_info="$USER@$hostname"
  git_branch=`git branch 2> /dev/null | grep "*" | sed 's/\* //g'`
  git_sha=`git reflog 2> /dev/null | head -1 | awk '{print $1}'`
  git_status=`git status --short 2> /dev/null`

  PWD_REL_WIDTH=${#pwd_relative}

  RUBY_WIDTH=${#ruby_version} #sub the 3 to space out the spaces as needed
  HOST_WIDTH=${#host_info}
  GIT_BRANCH_WIDTH=${#git_branch}
  GIT_SHA_WIDTH=${#git_sha}

  USED_WIDTH_EXTRA="$(($RUBY_WIDTH + $HOST_WIDTH + $GIT_BRANCH_WIDTH + $GIT_SHA_WIDTH))"
  if [ ${#git_status} -gt 0 ]
  then
    USED_WIDTH_EXTRA="$(($USED_WIDTH_EXTRA + 1))"
  fi
  USED_WIDTH_PARTIAL=$PWD_REL_WIDTH
  USED_WIDTH_FULL="$(($USED_WIDTH_PARTIAL + $USED_WIDTH_EXTRA))"
  AVAIL_WIDTH_PARTIAL="$(($COLUMNS - $USED_WIDTH_PARTIAL))"
  AVAIL_WIDTH_FULL="$(($COLUMNS - $USED_WIDTH_FULL - 3))"

  if [ $AVAIL_WIDTH_PARTIAL -gt 0 ]
  then
    ch_fg_col "32" #pwd
    echo -en $pwd_relative
    ch_fg_col "30" #dashes
    if [ $AVAIL_WIDTH_FULL -gt 0 ]
    then
      _repeat - $AVAIL_WIDTH_FULL
      ch_fg_col "31" #host
      echo -en $host_info " \b"
      ch_fg_col "238" #ruby
      echo -en $ruby_version " \b"
      ch_fg_col "34" #git branch
      echo -en $git_branch " \b"
      ch_fg_col "33" #git sha
      echo -en $git_sha
      if [ ${#git_status} -gt 0 ] 
      then
        ch_fg_col "31"
        echo -en "x"
      fi
    else
      _repeat - $AVAIL_WIDTH_PARTIAL
    fi
    ch_fg_col "1;37"
    echo ""
  fi
}
_repeat_space() {
  #@ USAGE: _repeat number
  local COUNTER=0
  while [ $COUNTER -lt $1 ]
  do
    COUNTER="$(($COUNTER+1))"
    printf " "
  done
}
_repeat() {
  #@ USAGE: _repeat string number
  local COUNTER=0
  while [ $COUNTER -lt $2 ]
  do
    COUNTER="$(($COUNTER+1))"
    printf "%s" $1
  done
}
PROMPT_COMMAND="underline_prompt"
PS1="❯ "
PS2="❯❯ "
