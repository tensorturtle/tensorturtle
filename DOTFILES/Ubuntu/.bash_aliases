#!/bin/bash
alias start='gnome-terminal -- htop;gnome-terminal -- watch -n 1 nvidia-smi; gnome-terminal -- watch -n 1 sensors;sudo nvidia-smi -pm ENABLED; sudo nvidia-smi -i 0 -pl 125'
alias er='jupyter lab --notebook-dir ~'
alias nv='watch -n 0.2 nvidia-smi'
alias temps='watch -n 1 sensors'
alias nv_high='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 235'
alias nv_low='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 125'
alias nv_mid='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 160'

alias conda-fastai='conda activate /home/jason/anaconda3/envs/fastai'
alias docker-yolov5='nvidia-docker run -ti -P --shm-size=10g -v ~/Desktop/Docker-Volumes:/volumes ultralytics/yolov5'


alias tb='tensorboard dev upload --logdir .'

alias ga='git add .;git commit -a'
alias gp='git push'
alias gl='git pull'
