
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jason/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jason/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jason/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jason/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 'we' and 'er' are shortcuts to launch remote fastai Jupyter notebook

alias we="ssh -p 1118 jason@tesla.ddns.net"
alias er="ssh -p 1118 -NfL localhost:8888:localhost:8888 jason@tesla.ddns.net"

export PATH="/Users/jason/.local/bin:${PATH}"
export PATH="/Users/jason/.ghcup:${PATH}"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias gl="git pull"
alias ga="git add .;git commit -a"
alias gp="git push"
