# PATH Audit

Goal:

Understand every PATH entry before moving PATH into a module.

Every entry must answer:

- Who added this?
- Why is it here?
- Do I still use it?
- Keep?

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
