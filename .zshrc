# Use powerline
 USE_POWERLINE="true"
# # Source manjaro-zsh-configuration
   if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
     source /usr/share/zsh/manjaro-zsh-config
   fi
#   # Use manjaro zsh prompt
   if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
     source /usr/share/zsh/manjaro-zsh-prompt
   fi


# XAMPP Linux
if type "/opt/lampp/xampp" > /dev/null;
then
  alias lamppStart="sudo systemctl stop apache2 mysql ; sudo /opt/lampp/xampp start"
  alias lamppStop="sudo /opt/lampp/xampp stop ; sudo systemctl start apache2 mysql"
fi

# LVIM
if type "/home/hyujisf/.local/bin/lvim" > /dev/null;
then
  alias lvim="/home/hyujisf/.local/bin/lvim"
fi

# Exa
if type "exa" > /dev/null;
then
  alias ls="exa --icons"
  alias ll="exa -l -g --icons"
  alias lla="ll -a"
fi

#nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pnpm
export PNPM_HOME="/home/hyujisf/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# starship
# eval "$(starship init zsh)"
