PS1='\[\033[1;33;1;30m\]\u@\h:\[\033[1;31m\]\w$ \[\033[0m\]\[\033[0m\]'

# node modules in current directory
PATH=./node_modules/.bin:$PATH

source ~/.scripts/time.sh
alias t='format_milliseconds_timestamp'
