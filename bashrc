function git_branch () {
  git rev-parse --abbrev-ref HEAD 2> /dev/null || return 1
}

function vcs() {
  BRANCH="$(git_branch)"
  if [ -n "$BRANCH" ]; then
    echo "(${BRANCH})"
  fi
}

PS1='\[\033[1;33;1;30m\]\u@\h:\[\033[1;31m\]\w$ \[\033[0m\]\[\033[0m\]'

# node modules in current directory
PATH=./node_modules/.bin:$PATH
