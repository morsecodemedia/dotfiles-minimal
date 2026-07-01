############################################################
# Functions
#
# Load reusable shell functions from ~/.functions.
############################################################
# Load functions
if [ -d "${HOME}/.functions" ]; then
  for f in "${HOME}/.functions/"*; do
    # shellcheck source=/dev/null
    . "$f"
  done
fi
