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
alias lst='ls -lt --color=auto'
alias lsl='ls -l --color=auto'
alias gs='git status'
alias gaa='git add'
alias gc-b='git checkout -b'
alias gc-m='git commit -m'
  
# Hunspell
export DICTIONARY=en_US
export WORDLIST=$HOME/.hunspell_personal_dictionary

export PATH="/usr/local/bin:$PATH"

# C++
export PATH="/usr/local/Cellar/gcc/8.2.0/bin:$PATH" 
export PATH="/usr/local/opt/llvm/bin:$PATH"

# python
# export PYTHONPATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
# the following lines were inserted for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# openmpi
export MANPATH="/usr/local/openmpi/share/man:$MANPATH"
export DYLD_LIBRARY_PATH=/usr/local/openmpi/lib:DYLD_LIBRARY_PATH
export PATH="/usr/local/openmpi/bin:$PATH"

# GAMS
export PYTHONPATH="/opt/gams/gams27.2_linux_x64_64_sfx/apifiles/Python/api_36"
export PATH="/opt/gams/gams27.2_linux_x64_64_sfx:$PATH"
export LD_LIBRARY_PATH="/opt/gams/gams27.2_linux_x64_64_sfx:$LD_LIBRARY_PATH" 

# Knitro license
export ARTELYS_LICENSE=/Users/takafumi/Knitro/artelys_lic_trial_artelysknitro_student_2017-11-17_c98bf72812.txt
# Knitro execution file
export PATH=/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/knitroampl:$PATH
# Knitro library
export DYLD_LIBRARY_PATH=/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/lib:$DYLD_LIBRARY_PATH

# Tasmanian
source /usr/local/Tasmanian/share/Tasmanian/TasmanianENVsetup.sh
export PATH=$PATH:/usr/local/Tasmanian/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Tasmanian/lib/
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/Tasmanian/include/
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/Tasmanian/include/
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/Tasmanian/lib/

PATH=/usr/local/Cellar/gcc/8.2.0/bin:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

# DocBook and AsciiDoc
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog

# source /usr/local/Tasmanian/config/TasmanianENVsetup.sh
# source /Users/takafumi/Desktop/TASMANIAN-5.1/usr/local/Tasmanian/config/TasmanianENVsetup.sh
# source /usr/local/Tasmanian/config/TasmanianENVsetup.sh

# virtualenvでpromptを変更しない
export VIRTUAL_ENV_DISABLE_PROMPT=0

# Intel MKL
export MKL_ROOT_DIR=/opt/intel/mkl
export LD_LIBRARY_PATH=$MKL_ROOT_DIR/lib/intel64:/opt/intel/lib/intel64_lin:$LD_LIBRARY_PATH
export LIBRARY_PATH=$MKL_ROOT_DIR/lib/intel64:$LIBRARY_PATH

# go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

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

