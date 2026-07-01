############################################################
# Search & FZF
#
# Search tooling and fuzzy finder configuration.
############################################################

# search
if command -v ag > /dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore .sass-cache --ignore npm_modules -g ""'
fi

# fzf
if command -v fzf > /dev/null 2>&1; then
  export FZF_DEFAULT_OPTS=""
  configure_fzf_theme() {
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
  configure_fzf_theme
  if [ -f ~/.fzf.bash ]; then
    # shellcheck source=/dev/null
    . ~/.fzf.bash
  fi
fi

