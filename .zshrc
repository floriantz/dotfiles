# Path to your oh-my-zsh installation.
export ZSH="/Users/flow/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git cargo docker dotenv nvm ripgrep terraform yarn)

source $ZSH/oh-my-zsh.sh

# starship setup
eval "$(starship init zsh)"

#broot
source /Users/flow/.config/broot/launcher/bash/br

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

