# oh-my-zsh
plugins=(git cargo docker dotenv nvm npx ripgrep terraform yarn)

# starship setup
eval "$(starship init zsh)"

#broot
source /Users/flow/.config/broot/launcher/bash/br

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
