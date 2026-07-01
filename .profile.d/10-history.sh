############################################################
# History
#
# Shared command history across tmux sessions.
# Adds timestamps.
# Prevents duplicate consecutive entries.
############################################################

# history
export HISTFILE="$HOME/.history"
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTIGNORE="clear:keybase*:exit"

PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"
