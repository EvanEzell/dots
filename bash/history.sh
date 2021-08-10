HISTCONTROL=ignoreboth # ignore duplicates and lines starting with a space
shopt -s histappend # append to the history file

# give lots of history
HISTSIZE=100000   
HISTFILESIZE=2000000

# save and reload history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
