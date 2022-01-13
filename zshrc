# Source the additional config in the .zsh folder
for config (~/.zsh/*.zsh) source $config

# Path to your oh-my-zsh installation.
export ZSH="/Users/floriantz/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git rust docker dotenv nvm ripgrep terraform yarn)

source $ZSH/oh-my-zsh.sh

# starship setup
eval "$(starship init zsh)"

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#broot
source /Users/floriantz/.config/broot/launcher/bash/br
