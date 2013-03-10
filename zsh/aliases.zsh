#General Stuff
  alias ..="cd .."
  alias ...="cd ../.."
  alias ls="ls -Ghla"
  alias mvim="mvim -W ~/Logs/vimcommands.log"
#META
  alias reload!='source $HOME/.zshrc'
  alias rl='source $HOME/.zshrc'
#Join the dots
  alias df='cd ~/dotfiles/'
  alias dfv='cd ~/dotfiles/; vim ~/dotfiles'
#Personal Stuff
  alias docs='cd ~/Documents'  
  alias code='cd ~/Code'
  alias lvm='cd ~/Code/LVM/'
  alias mba='cd ~/Documents/MBA'
  alias todo='cat -n ~/Documents/TodoLists/todo.txt'
  todo.(){
    echo "$1" >> ~/Documents/TodoLists/todo.txt;
    todo;
  } 
  .todo(){
    sed -i".bak" "$1d" ~/Documents/TodoLists/todo.txt;
    todo;
  }
  alias wtodo='cat -n ~/Documents/TodoLists/work_todo.txt'
  wtodo.(){
    echo "$1" >> ~/Documents/TodoLists/work_todo.txt;
    wtodo;
  } 
  .wtodo(){
    sed -i".bak" "$1d" ~/Documents/TodoLists/work_todo.txt;
    wtodo;
  }
#Ticket Evo Stuff
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias be='bundle exec'
  alias e='cd ~/workspace/exchange'
  alias p='cd ~/workspace/pos.rb'
