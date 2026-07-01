############################################################
# Functions
#
# Load reusable shell functions from ~/.functions.
############################################################
# Load functions
if [ -d "${HOME}/.functions" ]; then
  for function_file in "${HOME}/.functions/"*; do
    # shellcheck source=/dev/null
    . "$function_file"
  done
fi
