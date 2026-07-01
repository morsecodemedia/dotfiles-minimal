############################################################
# Aliases
#
# Interactive shell aliases.
############################################################

# basic shell aliases
if command -v colorls > /dev/null 2>&1; then
  alias ls='colorls -G'
  unset LSCOLORS
else
  export LSCOLORS=gxfxcxdxbxggedabagacad
  alias ls='ls --color'
fi

# Command overwrites
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias lynx='lynx -display_charset=utf8 --lss=/dev/null'
alias tmux='tmux -u2 -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias tmate='tmate -u2 -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias ag="ag --color-path 35 --color-match '1;35' --color-line-number 32"
alias newsboat='newsboat -C "$XDG_CONFIG_HOME"/newsboat/config -u "$XDG_CONFIG_HOME"/newsboat/urls -c "$XDG_CACHE_HOME"/newsboat.db'

# Directory Helpers
alias ll='ls -lha'
alias lsd='ls -Gl | grep "^d"'
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Time Aliases
alias utc='date -u +%H:%M:%S'
alias beat='echo "x = ($(date +%s) + 3600) % 86400; scale=3; x / 86.4" | bc'
alias beatTAI='echo "x = $(date +%s) % 86400; scale=3; x / 86.4" | bc'
alias mil='echo "x = $(date +%s) % 86400; scale=3; x / 86400" | bc'
alias julian='echo "x = $(date +%s); scale=5; x / 86400 + 2440587.5" | bc'
alias getmusic="yt-dlp -x --audio-quality 0 --audio-format mp3"
alias getplaylist="yt-dlp -x --audio-quality 0 --audio-format mp3 --yes-playlist"

# General Helpers
alias vimr='vim -u NONE -U NONE -i NONE'
alias gb="git branch"
alias gs="git status"
alias t='tmux attach || tmux new'
alias mosh="export LC_ALL=\"en_US.UTF8\" && mosh"
alias proxy="ssh -D 1337 -q -C -N"
alias dskill="find . -name '*.DS_Store' -type f -ls -delete"
alias reload="source ~/.profile && clear"
alias phpserver="php -S localhost:8080"
