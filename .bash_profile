###############
### Aliases ###
###############

## System-wide ##
alias bashprof="atom ~/.bash_profile"
alias desktop="cd ~/Desktop/"
alias documents="cd ~/Documents/"
alias downloads="cd ~/Downloads/"
alias getcurrentip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias gitlog="git log --oneline --graph --decorate --all"
alias gpom="git pull origin master"
alias gs="git status"
alias kill-git-branches='git branch | grep -v "master" | xargs git branch -D'
alias ls="ls -Fal"
alias pr="dopen p"
alias prodconsole="convox run console 'bin/safe-console' -a review-rocket-prod --rack production"
alias reloadbash="source ~/.bash_profile"
alias up="cd .."

## Rails ##
alias dbfullreset="bundle exec rake db:drop db:create db:migrate db:fixtures:load db:seed"
alias jobworker="bundle exec rake jobs:work"
alias migrate="bundle exec rake db:migrate"
alias rc="bundle exec rails c"
alias rs="bundle exec rails s"
alias rsb="bundle exec rails s -b 0.0.0.0"
alias rsp="bundle exec rails s -p 3001"
alias rsp2="bundle exec rails s -p 3002"

## Elixir ##
alias deps="mix deps.get"
alias dbsetup="mix ecto.setup"
alias ectomigrate="mix ecto.migrate"
alias phoenix="mix phoenix.server"
alias phx="mix phx.server"

## JavaScript ##
alias listnpm="ls `npm root -g`"
alias npms="npm start"

## Homebrew ##
alias bsl="brew services list"
alias startpg="brew services start postgres"
alias stoppg="brew services stop postgres"

##########################
### Other Config Stuff ###
##########################

# Git Branch in Prompt ##
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="user: \u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "
# export PS1="user: \u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ " #ADDS USER@HOST

## Git Autocompletion ##
test -f ~/.git-completion.bash && . $_

## Make RBENV Work ##
eval "$(rbenv init -)"

## IF YOU'RE USING N TO MANAGE NODE VERSIONS, USE THE FOLLOWING:
# ## Make N Work ##
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
# # Added by n-install (see http://git.io/n-install-repo).

## IF YOU'RE USING NVM TO MANAGE NODE VERSIONS, USE THE FOLLOWING:
# ## Make NVM work ##
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# #
# # Run 'nvm use' automatically every time there's
# # a .nvmrc file in the directory. Also, revert to default
# # version when entering a directory without .nvmrc
# #
# enter_directory() {
# if [[ $PWD == $PREV_PWD ]]; then
#     return
# fi
#
# PREV_PWD=$PWD
# if [[ -f ".nvmrc" ]]; then
#     nvm use
#     NVM_DIRTY=true
# elif [[ $NVM_DIRTY = true ]]; then
#     nvm use default
#     NVM_DIRTY=false
# fi
# }
#
# export PROMPT_COMMAND=enter_directory
#
