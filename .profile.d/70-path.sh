
# system path
path() { [ -d "$1" ] && PATH="${PATH}${PATH:+:}${1}"; }
PATH=/bin
path "/opt/homebrew/bin"
path "/opt/homebrew/opt/coreutils/libexec/gnubin"
path "/opt/homebrew/opt/make/libexec/gnubin"
path "/sbin"
path "/usr/bin"
path "/usr/sbin"
path "/usr/local/sbin"
path "/usr/local/bin"
path "${HOME}/bin"
path "${HOME}/.local/bin"

export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

path "${HOME}/.local/bin"
path "${HOME}/.lmstudio/bin"

