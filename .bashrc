parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source ~/git-completion.bash

export PS1="\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias git-graph=" git log --decorate --graph --all --oneline --date=short --format='%Cgreen%h %Cred%ad %Cgreen%d %Creset%s'"
alias gdiff="clear && git diff"
alias gstatus="git status -s"

export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')
export EDITOR=/usr/local/bin/code
