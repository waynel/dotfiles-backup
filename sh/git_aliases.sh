  alias g='git'
  __git_complete g _git
  alias gs='echo "use g s"'
  alias gsl='git stash list'
  gbd(){
    echo "Files To Remove:"
    for br in $( git branch | grep $1 )
    do
      echo '  => ' $br
    done

    echo "Is this cool? [Yn]"
    read INPUT
    if [ $INPUT == 'Y' ];
    then
      git branch | grep $1 | xargs git branch -D
    fi
  }
  gfuzz(){
    echo "The Following Where Caught by The Fuzz:\n";
    git cherry -v HEAD master | grep "+"
  }
  gpolice(){
    echo "The Following Where Caught by The Fuzz:\n";
    git cherry -v $1 $2 | grep "+"
  }
#cooked up
  alias gbad='git status --short | grep --color=always " M\|UU\|AA|DU"'
  alias gbad_s='gbad |  grep -o "[^ ]*$"'
