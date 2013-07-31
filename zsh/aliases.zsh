#General Stuff
  alias ..="cd .."
  alias ...="cd ../.."
  alias ls="ls -G"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"
#META
#Join the dots
  alias cdf='cd ~/dotfiles/'
#Personal Stuff
  alias docs='cd ~/Documents'  
  alias code='cd ~/Code'
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
  alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
  alias remote_canary='canary --remote-debugging-port=9222'
#rename tab
  rename_tab(){
    echo -en "\033]0;$1\a"
  }
  rename_tab_pipe(){
    output=`$1`;
    rename_tab $output;
  }
  alias tabname='rename_tab_pipe pwd'
#Ticket Evo Stuff
  alias temux='~/dotfiles/tmux_sessions/temux'
  alias retemux='tmux kill-session -t temux;ds restart;temux'
  alias tegem='cd ~/workspace/ticketevolution-ruby; rename_tab "TE GEM"'
  alias teex='cd ~/workspace/pos-chrome-extension/Robotester/tests/; rename_tab "TE GEM"'
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias e='cd ~/workspace/exchange; rename_tab "Exchange"'
  alias p='cd ~/workspace/pos.rb; rename_tab "POS"'
#Rails Shortcuts
  alias tmux_rails='~/dotfiles/tmux_sessions/railsmux'
  alias rrg='rake routes | grep'
#vlc
  alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -cvlc'
  alias vlci='/Applications/VLC.app/Contents/MacOS/VLC -I rc'
