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

# Aliases
alias rgf='rg --files | rg'
alias tailscale='/Applications/Tailscale.app/Contents/MacOS/Tailscale'

# TFSwitch
export PATH=$PATH:$HOME/bin


# Nix
 if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
 fi
# End Nix

export PATH=$HOME/.nix-profile/bin:$PATH


eval "$(atuin init zsh)"
eval "$(direnv hook zsh)"




# Created by `pipx` on 2024-03-26 15:30:26
export PATH="$PATH:/Users/floriantz/.local/bin"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/floriantz/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
