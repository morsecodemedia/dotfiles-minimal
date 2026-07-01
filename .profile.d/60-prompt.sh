############################################################
# Prompt
#
# Interactive shell prompt configuration.
#
# Responsible for:
#   - Prompt appearance
#   - Prompt colors
#   - Hostname display
#   - Working directory display
#
# This module should not contain:
#   - Environment variables
#   - Aliases
#   - PATH manipulation
#   - Shell functions
############################################################


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
