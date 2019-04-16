set -x PATH $PATH  "/usr/local/bin"

# C++
set -x PATH "/usr/local/Cellar/gcc/8.2.0/bin" $PATH 
set -x PATH "/usr/local/opt/llvm/bin" $PATH 

# file goes to the trush box when rm is executed
alias rm='rmtrash'

set -x CC "/usr/local/bin/gcc"
set -x CXX "/usr/local/bin/g++"

# openmpi
set -x MANPATH "/usr/local/openmpi/share/man" $MANPATH
set -x DYLD_LIBRARY_PATH "/usr/local/openmpi/lib" $DYLD_LIBRARY_PATH
set -x PATH "/usr/local/openmpi/bin" $PATH

# the following lines were inserted for pyenv
set -gx PYENV_ROOT "$HOME/.pyenv"
status --is-interactive; and . (pyenv init - | psub)
status --is-interactive; and . (pyenv virtualenv-init - | psub)

# the above lines were inserted for pyenv
set -x PATH $PATH "$PYENV_ROOT/versions/anaconda3-5.0.1/bin"
# required by elpy
set -x PATH $PATH "/Users/takafumi/.local/bin"
# # In order to activate pyenv in anaconda
# source (conda info --root)/etc/fish/conf.d/conda.fish
# # Avoid warning of brew doctor with pyenv
# function brew
#   set PATH_tmp $PATH

#   # for .pyenv/shims
#   set -l i (contains -i $HOME/.pyenv/shims $PATH)
#   set PATH[$i] /bin # /bin is dummy
#   # for .pyenv/versions
#   set -l i (contains -i $HOME/.pyenv/versions/anaconda3-5.0.1/bin $PATH)
#   set -l i (contains -i ~/.local/bin $PATH)
#   set PATH[$i] /bin # /bin is dummy

#   command brew $argv

#   set PATH $PATH_tmp
# end


# GAMS
set -x PATH $PATH "/Applications/GAMS24.5/sysdir"
# No license
# set -x PATH $PATH "/Applications/GAMS25.0/sysdir"
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH "/Applications/GAMS25.0/sysdir"

# Knitro license
set -x ARTELYS_LICENSE $ARTELYS_LICENSE "/Users/takafumi/Knitro/artelys_lic_trial_artelysknitro_student_2017-11-17_c98bf72812.txt"
# Knitro execution file
set -x PATH $PATH "/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/knitroampl"
# Knitro library
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH "/Users/takafumi/Knitro/knitro-10.3.1-z-MacOS-64/lib"

# DocBook
set -x XML_CATALOG_FILES "/usr/local/etc/xml/catalog"
