#!/usr/bin/env zsh

# Prompt:
PROMPT='$(top_arrow)$(name)$(location)
$(bottom_arrow)'

# Name of the current user:
name () {
  echo "$(bold)%n$(reset)"
}

# Current location, but only if it's not $HOME:
location () {
  if ! [[ $PWD == $HOME ]]; then
    echo " in $(bold)%1~$(reset)"
  fi
}

# Top part of arrow:
top_arrow () {
  echo "╭ "
}

# Bottom part of arrow:
bottom_arrow () {
  echo "╰─→ "
}

# Bold text:
bold () {
  echo "%{$FX[bold]%}"
}

# Reset text:
reset () {
  echo "%{$reset_color%}"
}
