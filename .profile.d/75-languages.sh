############################################################
# Language Runtimes
#
# Runtime initialization for development tools.
############################################################


# javascript
export NVM_DIR="$HOME/.config/nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh"
fi

# Activate the default Node.js for interactive shells.
if command -v nvm >/dev/null 2>&1; then
  nvm use default >/dev/null
fi

if [ -s "$NVM_DIR/bash_completion" ]; then
  . "$NVM_DIR/bash_completion"
fi

if command -v node > /dev/null 2>&1; then
  NPM_PACKAGES="${HOME}/.npm-packages"
fi
