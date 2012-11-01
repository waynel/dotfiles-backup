for config_file ($ZSH/lib/**/*.zsh) source $config_file

autoload -U compinit
compinit

for config_file ($ZSH/completion/*.zsh) source $config_file
