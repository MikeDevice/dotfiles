PS1='\[\033[1;33;1;30m\]\u@\h:\[\033[1;31m\]\w$ \[\033[0m\]\[\033[0m\]'

# node modules in current directory
PATH=./node_modules/.bin:$PATH

function t () {
  _date=${1:0:-3}
  date +"%d.%m.%Y, %H:%M" -d @$_date
}
