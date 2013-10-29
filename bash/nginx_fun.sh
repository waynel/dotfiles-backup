# Kill and restart nginx
function restart_nginx(){
  pids=$(pidof nginx)
  if [[ -n $pids ]]; 
  then
    sudo kill -9 $pids
    sudo service nginx restart
  fi  
}
 
# Kill unicorn
function kill_unicorn(){
  ps aux | grep 'unicorn' | awk '{print $2}' | xargs sudo kill -9
}
 
# test unicorn process
function test_unicorn(){
  # If config/unicorn.rb doesn't exist, don't bother running anything.
  unicornFile=config/unicorn.rb
  if [ ! -e $unicornFile ];
  then
    echo "Unicorn file not found"
  else
    echo "Starting unicorn..."
    bundle exec unicorn_rails -c $unicornFile -E production
  fi
}
 
# run unicorn process as a daemon
function start_unicorn(){
  # If config/unicorn.rb doesn't exist, don't bother running anything.
  unicornFile=config/unicorn.rb
  if [ ! -e $unicornFile ];
  then
    echo "Unicorn file not found"
  else
    bundle exec unicorn_rails -c $unicornFile -E production -D
  fi
}
 
# Create a symbolic link to a config file in the sites-enabled dir
# arg1: basename of config file in sites-available dir
# Ex: 'nginx_enable railsapp1.com'
function nginx_enable(){
  confFile=$1
  fullFilePath=/etc/nginx/sites-available/$confFile
  symLinkPath=/etc/nginx/sites-enabled/$confFile
 
  # First test to see that the file exists
  if [ ! -e $fullFilePath ]
  then
    printf "%s not found..." "$fullFilePath"
    printf "Aborted!\n"
  else
    # If symlink already exists, delete it so the new configuration
    # will take effect.
    if [ -e $symLinkPath ]
    then
      printf "Old symbolic link removed...\n"
      sudo rm $symLinkPath
    fi  
 
    sudo ln -s $fullFilePath $symLinkPath
 
    # Confirm the symlink was created
    if [ -e $symLinkPath ]
    then
      printf "$confFile enabled.\n"
    fi  
  fi  
}
 
# Destroy a symbolic link in the sites-enabled directory.
# arg1: basename of symbolic link to
# Ex: 'nginx_disable railsapp1.com'
function nginx_disable(){
  symLink=$1
  symLinkPath=/etc/nginx/sites-enabled/$symLink
 
  # First test to see that the link exists
  if [ ! -e $symLinkPath ]
  then
    printf "$symLink is not currently enabled. Exiting.\n"
  else
    # If the link does exist, delete it.
    sudo rm $symLinkPath
 
    # Confirm the symlink was destroyed
    if [ ! -e $symLinkPath ]
    then
      printf "$symLink disabled.\n"
    fi
  fi
}
