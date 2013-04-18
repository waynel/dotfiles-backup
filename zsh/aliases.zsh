#General Stuff
  alias ..="cd .."
  alias ...="cd ../.."
  alias ls="ls -Ghla"
  alias vless='vim -u /usr/share/vim/vim73/macros/less.vim'
#META
  alias reload!='source $HOME/.zshrc'
  alias rl='source $HOME/.zshrc'
#Join the dots
  alias cdf='cd ~/dotfiles/'
  alias vdf='cd ~/dotfiles/; vim ~/dotfiles'
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
  alias tegem='cd ~/workspace/ticketevolution-ruby; rename_tab "TE GEM"'
  alias teex='cd ~/workspace/pos-chrome-extension/Robotester/tests/; rename_tab "TE GEM"'
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias be='bundle exec'
  alias e='cd ~/workspace/exchange; rename_tab "Exchange"'
  alias p='cd ~/workspace/pos.rb; rename_tab "POS"'
  alias pv='cd ~/workspace/pos.rb/app/assets/javascripts/backbone/views/; rename_tab "POS"'
  alias pm='cd ~/workspace/pos.rb/app/assets/javascripts/backbone/models/; rename_tab "POS"'
  alias pa='cd ~/workspace/pos.rb/app/assets; rename_tab "POS"'
  alias pb='cd ~/workspace/pos.rb/app/assets/javascripts/backbone/; rename_tab "POS"'
  alias pt='cd ~/workspace/pos.rb/app/assets/templates/; rename_tab "POS"'
  alias es='e; rename_tab "Server:Exchange";cd ~/workspace/exchange; ds - startc'
  alias ec='e; rename_tab "Exchange Console"; ds - rails console'
  alias edb='e; rename_tab "Exchange DB"; ds - rails dbconsole'
  alias pos='p; rename_tab "Server:POS"; cd ~/workspace/pos.rb/; ds - start'
