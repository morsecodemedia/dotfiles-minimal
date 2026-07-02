############################################################
# PATH
#
# Executable search path.
#
# Order matters.
# Earlier entries take precedence over later entries.
############################################################

path() {
  [ -d "$1" ] && PATH="${PATH}${PATH:+:}$1"
}

#
# Core Operating System
#

PATH=/bin
path "/usr/bin"
path "/usr/local/bin"

#
# Homebrew
#

path "/opt/homebrew/bin"
path "/opt/homebrew/opt/coreutils/libexec/gnubin"
path "/opt/homebrew/opt/make/libexec/gnubin"

# Prefer Homebrew libxml2 over the system version.
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

#
# System Administration
#

path "/sbin"
path "/usr/sbin"

#
# Personal Scripts
#

path "$HOME/bin"

#
# Package Managers
#

path "$HOME/.npm-packages/bin"
path "$HOME/.local/bin"

#
# AI Tooling
#

path "$HOME/.lmstudio/bin"
