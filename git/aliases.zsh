#standard
  alias gcl='git checkout - '
  alias gcm='git checkout master '
  alias gc='git commit'
  alias gd='git diff'
  alias gs='git status --short'
  alias gsb='git show-branch'
  alias gch='git checkout'
  alias gcp='git cherry-pick'
  alias gbr='git checkout -b'
  alias gbrm='git branch -d'
  alias gw='gitwarp'
  alias gm='git merge --no-ff'
  alias gmf='git merge --ff-only' 
  alias gsl='git stash list'
  alias gpoh='git push origin head'
  alias gpr='git pull --rebase'
  gpolice(){
    echo "The Following Where Caught by The Fuzz"
    git cherry -v $1 $2 | grep "+"
  }
#cooked up
  alias gsnap='git stash save "snapshot: $(date)" && git stash apply "stash@{0}"'
  alias gbad='git status --short | grep --color=always " M\|UU\|AA|DU"'
  alias gbad_s='gbad |  grep -o "[^ ]*$"'
  gstash(){
    case $1 in
      "ls") git stash show stash@{$2};;
      "pop") git stash pop stash@{$2};;
      "checkout") git checkout stash@{$2} -- $3;;
    esac
  }
  glog(){
    case $1 in
      "my") git log | grep -B 1 -A 3 -m 50 --color=always "Rich Soni";
    esac
  }
