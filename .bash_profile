export PATH=/usr/local/bin:$PATH
export PYTHONPATH="$HOME/.local/bin:$PATH"
# the following lines were inserted for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/versions/anaconda3-5.0.1/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# GAMS
export PATH=/Applications/GAMS24.5/sysdir:$PATH
# No license
# export PATH=/Applications/GAMS25.0/sysdir:$PATH
# Knitro license
export ARTELYS_LICENSE=/Users/takafumi/Knitro/artelys_lic_trial_artelysknitro_student_2017-11-17_c98bf72812.txt
# Knitro execution file
export PATH=/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/knitroampl:$PATH
# Knitro library
export DYLD_LIBRARY_PATH=/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/lib:$DYLD_LIBRARY_PATH

# Tasmanian
export PATH=$PATH:/usr/local/Tasmanian/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Tasmanian/lib/
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/Tasmanian/include/
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/Tasmanian/include/
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/Tasmanian/lib/

PATH=/usr/local/Cellar/gcc/8.2.0/bin:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

# DocBook and AsciiDoc
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog

source /usr/local/Tasmanian/config/TasmanianENVsetup.sh
source /Users/takafumi/Desktop/TASMANIAN-5.1/usr/local/Tasmanian/config/TasmanianENVsetup.sh
source /usr/local/Tasmanian/config/TasmanianENVsetup.sh
