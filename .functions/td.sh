#!/bin/sh

td() {
  local todo_dir
  todo_dir="$(dirname "$TODO")"

  tmux split-window -v -p 25 "cd '$todo_dir' && todo && exec ${SHELL} -l"
}
