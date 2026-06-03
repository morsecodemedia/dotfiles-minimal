#!/bin/sh

td() {
  local todo_dir
  todo_dir="$(dirname "$TODO")"

  tmux split-window -v -p 30 \
    "export TODOFILE_OVERRIDE='$TODO'; \
    cd '$todo_dir'; \
    todo; \
    exec ${SHELL} -l"
}
