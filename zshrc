#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# if [ $SHLVL = 1 ]; then
#   tmux
# fi

# alias
# alias ls='ls --color=auto'
alias lt='ls -ltF --color=auto'
alias lr='ls -ltrF --color=auto'
alias ll='ls -lF --color=auto'
alias gs='git status'
alias gaa='git add'
alias gc-b='git checkout -b'
alias gc-m='git commit -m'
alias res='~/Dropbox/Research/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias drop=' ~/Dropbox'  
alias epfl=' ~/Dropbox/Research/PhD/EPFL'  
alias uzh=' ~/Dropbox/Research/PostDoc/UZH'  
alias paper='cd ~/Dropbox/Research/Reference/Paper'  

# virtualenvでpromptを変更しない
export VIRTUAL_ENV_DISABLE_PROMPT=0

# Hunspell
export DICTIONARY=en_US
export WORDLIST=$HOME/.hunspell_personal_dictionary

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
eval "$(pyenv init -)"
fi

# conda
. /home/takafumi/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh
conda activate

# GAMS
export PATH=/opt/gams/gams31.2_linux_x64_64_sfx:$PATH
export PATH=/opt/gams/gams32.2_linux_x64_64_sfx:$PATH

# Cuda
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/lib/cuda/lib64:/usr/local/lib:$LD_LIBRARY_PATH

# Python
export PATH=$HOME/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
