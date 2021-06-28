
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
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="/Users/jason/.local/bin:${PATH}"
export PATH="/Users/jason/.ghcup:${PATH}"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias gl="git pull"
alias ga="git add .;git commit -a"
alias gp="git push"

alias la="ls -a"
alias vnc="open -a Safari vnc://tesla.ddns.net:2228"

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# conda
conda activate default

# mount apricots NAS
alias samba="open 'smb://jason:eraser@granny.local/apricots' && sleep 10 && cd /Volumes/apricots"

alias shutdown="sudo shutdown -h now"

# ssh shortcuts
alias ssh-shoebox="ssh -p 1118 jasonsohn@tesla.ddns.net"
alias ssh-tinylenovo="ssh -p 1115 tensorturtle@tesla.ddns.net"

# jupyter notebook forwarding
alias fwd-jupyter="ssh -p 1118 -NfL localhost:8888:localhost:8888 jasonsohn@tesla.ddns.net; echo Go to localhost:8888"

# tensorboard forwarding
alias fwd-tb="ssh -p 1118 -NfL localhost:16006:localhost:6006 jasonsohn@tesla.ddns.net; echo Go to localhost:16006"

