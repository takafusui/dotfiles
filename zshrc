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
if [ $SHLVL = 1 ]; then
  tmux
fi

# alias
# alias ls='ls --color=auto'
alias lst='ls -lt --color=auto'
alias lsl='ls -l --color=auto'
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

# Hunspell
export DICTIONARY=en_US
export WORDLIST=$HOME/.hunspell_personal_dictionary

# virtualenvでpromptを変更しない
export VIRTUAL_ENV_DISABLE_PROMPT=0

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/takafumi/.pyenv/versions/anaconda3-5.3.1/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/takafumi/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh" ]; then
        . "/home/takafumi/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh"
    else
        export PATH="/home/takafumi/.pyenv/versions/anaconda3-5.3.1/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

