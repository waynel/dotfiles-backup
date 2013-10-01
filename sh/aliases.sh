#MAC OS X STUFF
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias wifion="networksetup -setairportpower 'en1' on"
  alias wifioff="networksetup -setairportpower 'en1' off"
  alias wifils="airport -s"
  alias shared_computers="dns-sd -B _afpovertcp._tcp ."
  wificd(){ networksetup -setairportnetwork 'en1' $1 $2; }
  alias wifipwd="networksetup -getairportnetwork 'en1'"
#General Stuff
  alias ..="cd .."
  alias ...="cd ../.."
  alias ls="ls -G"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"
  alias rm='rm -i'
#META
#Join the dots
  alias cdf='cd ~/dotfiles/'
#Personal Stuff
  alias docs='cd ~/Documents'  
  alias code='cd ~/Code'
  alias todo='vi ~/Dropbox/Todotxt/todo.txt'
  alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
  alias remote_canary='canary --remote-debugging-port=9222'
#Ticket Evo Stuff
  alias temux='~/dotfiles/tmux_sessions/temux'
  alias retemux='tmux kill-session -t temux;sudo ls; ds restart;temux'
  alias tegem='cd ~/workspace/ticketevolution-ruby'
  alias teex='cd ~/workspace/pos-chrome-extension/Robotester/tests/'
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias e='cd ~/workspace/exchange'
  alias p='cd ~/workspace/pos.rb'
#Rails Shortcuts
  alias tmux_rails='~/dotfiles/tmux_sessions/railsmux'
  alias r='rails'
  alias rrg='rake routes | grep'
#vlc
  alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -cvlc'
  alias vlci='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

  function chat { if [[ $( ps aux | grep -v grep | grep "tail -f .*fnotify" ) ]]; then echo Growl running; else echo > ~/.irssi/fnotify; tail -f ~/.irssi/fnotify |  while read; do growlnotify --sticky --image ~/.irssi/irssi-icon.png -m "$REPLY"; echo $REPLY | cut -f1-10 -d" "; done & fi; bitlbee -F -u rich; irssi; }
  alias cofflint='find . -name "*.coffee" -exec coffeelint -q -f ~/workspace/pos.rb/.git/hooks/config/coffeelint.json {} \;'
