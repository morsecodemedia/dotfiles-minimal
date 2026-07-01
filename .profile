# Load profile modules
. "$HOME/.profile.d/load.sh"


# search
if command -v ag > /dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore .sass-cache --ignore npm_modules -g ""'
fi

# fzf
if command -v fzf > /dev/null 2>&1; then
  export FZF_DEFAULT_OPTS=""
  _gen_fzf_default_opts() {
    # Base16 Tomorrow Night
    color00='#1d1f21'
    color01='#282a2e'
    color04='#b4b7b4'
    color06='#e0e0e0'
    color0A='#f0c674'
    color0C='#8abeb7'
    color0D='#81a2be'
    export FZF_DEFAULT_OPTS="
    --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D
    --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
    --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
    "
  }
  _gen_fzf_default_opts
  if [ -f ~/.fzf.bash ]; then
    # shellcheck source=/dev/null
    . ~/.fzf.bash
  fi
fi

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


# LLAMA HELPERS

# Launch background server for VS Code / Continue
alias code-server="/usr/local/bin/llama-server -dev MTL0 --n-gpu-layers 999 --flash-attn on --ctx-size 8192 --port 8080 -m /Users/brandonmorse/Sites/models/qwen2.5-coder-14b-instruct-q8_0.gguf"

# Launch instant interactive terminal chat for academic research
alias research="/usr/local/bin/llama-cli -dev MTL0 --n-gpu-layers 999 --flash-attn on --ctx-size 16384 -cnv --color on -m /Users/brandonmorse/Sites/models/qwen2.5-coder-14b-instruct-q8_0.gguf"



# use color in prompt if not dash. Color works there, but screws up line wrapping
USER=$(id -un)
HOSTNAME=$(uname -n)
# true shell (TS) name
TS=$(ps -cp "$$" -o command="" 2>/dev/null)
if [ -z "$TS" ] || [ "$TS" = "" ] || [ "$TS" = "dash" ] || [ "$TS" = "sh" ]; then
  # dash/sh can't render colors properly in the prompt without breaking readline
  PS1="[${HOSTNAME}] " # [hostname]
  PS1=${PS1}'$(basename $(pwd)) ' # workingdir
  PS1=${PS1}"-> " # ->
else
  DIRECTORY_COLOR="\001$(tput setaf 12)\002";
  PIPE_COLOR="\001$(tput setaf 241)\002";
  PROMPT_COLOR="\001$(tput setaf 196)\002";
  HOST_COLOR="\001$(tput setaf 245)\002"
  RESET_COLOR="\001$(tput sgr0)\002"
  PS1="${HOST_COLOR}${HOSTNAME}" # [hostname]
  PS1=${PS1}"${PIPE_COLOR}|" # [hostname]
  PS1=${PS1}"${DIRECTORY_COLOR}\w" # workingdir
  PS1=${PS1}"\n$PROMPT_COLOR->$RESET_COLOR " # ->
  unset DIRECTORY_COLOR PROMPT_COLOR HOST_COLO RESET_COLOR
fi
export PS1

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

# javascript
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if command -v node > /dev/null 2>&1; then
  NPM_PACKAGES="${HOME}/.npm-packages"
fi


# Load local system overrides
if [ -f "$HOME/.profile_local" ]; then
  # shellcheck source=/dev/null
  . "$HOME/.profile_local"
fi

export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

# Created by `pipx` on 2025-07-08 17:22:34
export PATH="$PATH:/Users/brandonmorse/.local/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/brandonmorse/.lmstudio/bin"
# End of LM Studio CLI section

