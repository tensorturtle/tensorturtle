# Dotfiles

This repository contains cross-platform bash setup that lets me get up and running quickly from scratch.

Inspired by [Micha van den Burg](https://github.com/mischavandenburg/dotfiles) and [rwxrob](https://www.youtube.com/@rwxrob)


# macOS

Install homebrew. Then install following packages using homebrew:
+ neovim
+ tmux


`~/.bash_profile`:
```
# Sources ~/.bashrc
[ -f ~/.bashrc ] && . ~/.bashrc
```

`~/.bashrc`:
```
PS1='\u@\h: \w @ '

export XDG_CONFIG_HOME="$HOME/.config"
export HOMEBREW_PREFIX="/opt/homebrew"
export PATH=$PATH:/opt/homebrew/bin

alias ls="ls -a"
alias bash="/opt/homebrew/bin/bash"
alias vim="nvim"

alias gl="git pull"
alias ga="git add . & git commit -a"
alias gp="git push"
```
