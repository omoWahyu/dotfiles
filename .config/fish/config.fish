if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

load_nvm > /dev/stderr
