#General Stuff
  alias ..="cd .."
  alias ...="cd ../.."
  alias ls="ls -Ghla"
#META
  alias reload!='source $HOME/.zshrc'
#Join the dots
  alias df='cd ~/dotfiles/'
  alias dfv='cd ~/dotfiles/; vim ~/dotfiles'
#Personal Stuff
  alias docs='cd ~/Documents'  
#Ticket Evo Stuff
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias v='ds && vagrant up && vagrant ssh'
  alias vh='ds && vagrant halt'
  alias vr='vh && v'
  alias s='../developer_support/bin/shell'
  alias ds='cd /Users/rich/workspace/developer_support'
  alias be='bundle exec'
  alias ve='s CACHE_CLASSES=true rails s -p 3000'
  alias vp='s rails s -p 5000'
  alias e='cd ~/workspace/exchange'
  alias p='cd ~/workspace/pos.rb'
