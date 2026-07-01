# Load profile modules
. "$HOME/.profile.d/load.sh"

# web
export LYNX_CFG="$HOME/.config/lynx/config"
export CURL_HOME="$HOME/.config/curl"
export WWW_HOME="gopher://gopher.black"

# personal app storage paths
export NOTE_DIR="$DROPBOX_PATH/notes"

# system
export TZ="America/New_York"
# sync
export SYNCTHING_PATH="$HOME/.syncthing"
export SSH_ENV="$HOME/.ssh/environment"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

export SSH_KEY_LOCATIONS="${HOME}/.ssh/ ${HOME}/keys/personal/ssh/ ${HOME}/keys/work/ssh/"

# personal app storage paths
export TODO="${HOME}/Documents/todo/personal.txt"
export NOTE_DIR="$SYNCTHING_PATH/notes"
export CONTACTS_DIR="$SYNCTHING_PATH/contacts"
export TRACK_DIR="$SYNCTHING_PATH/track"
export AUDIOBOOKS="${HOME}/pCloudDrive/Audiobooks/"
export STATIONS="${SYNCTHING_PATH}/music/stations.txt"

# system
export LANG="en_US.UTF-8"
export LC_TIME="en_GB.UTF-8"
export ZPOOL_VDEV_NAME_PATH=YES

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/tmp/xdg_runtime"

# XDG Path Fixes
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/history"
export LESSKEY="${XDG_CONFIG_HOME}/less/keys"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm
export CALCHISTFILE=$XDG_DATA_HOME/calc_history
export DOTREMINDERS=$XDG_CONFIG_HOME/remind/reminders
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
alias ag='ag --path-to-ignore $XDG_CONFIG_HOME/ag/ignore'

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# vim
export EDITOR="vim"
set -o vi

# less settings
export PAGER=less

# umask liberal
umask 0022

# system path
path() { [ -d "$1" ] && PATH="${PATH}${PATH:+:}${1}"; }
PATH=/bin
path "/opt/homebrew/bin"
path "/opt/homebrew/opt/coreutils/libexec/gnubin"
path "/opt/homebrew/opt/make/libexec/gnubin"
path "/sbin"
path "/usr/bin"
path "/usr/sbin"
path "/usr/games"
path "/usr/pkg/bin"
path "/usr/local/sbin"
path "/usr/local/bin"
path "/usr/X11/bin"
path "/opt/local/bin"
path "/opt/local/sbin"
path "/snap/bin"
path "/tilde/bin"
path "${HOME}/bin"
path "${HOME}/.yarn/bin"
path "${HOME}/.npm-packages/bin"
path "${HOME}/.config/yarn/global/node_modules/.bin"
path "${HOME}/.node/bin"
path "${HOME}/.local/bin"
path "${HOME}/.fzf/bin"
path "${HOME}/go/bin"


export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

# Created by `pipx` on 2025-07-08 17:22:34
export PATH="$PATH:/Users/brandonmorse/.local/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/brandonmorse/.lmstudio/bin"
# End of LM Studio CLI section

