#!/bin/bash

# C++ autocompiler (run in separate window to editor)
gg() {
	rm -f a.out
	# compile C++ .cpp file and run executable
	g++ "$1"
	./a.out
}

alias start='gnome-terminal -- htop;gnome-terminal -- watch -n 1 nvidia-smi; gnome-terminal -- watch -n 1 sensors;sudo nvidia-smi -pm ENABLED; sudo nvidia-smi -i 0 -pl 125'
alias er='jupyter lab --notebook-dir ~'
alias we='jupyter lab --no-browser --port=8888'
alias nv='watch -n 0.2 nvidia-smi'
alias temps='watch -n 1 sensors'
alias nv_high='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 235'
alias nv_low='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 125'
alias nv_mid='sudo nvidia-smi -pm ENABLED;sudo nvidia-smi -i 0 -pl 160'

alias docker-yolov5='nvidia-docker run -ti -P --shm-size=10g -v ~/Desktop/Docker-Volumes:/volumes ultralytics/yolov5'


alias tb='tensorboard dev upload --logdir .'

alias ga='git add .;git commit -a'
alias gp='git push'
alias gl='git pull'

# ssh shortcuts
alias ssh-tinylenovo='ssh -p 1115 tensorturtle@tesla.ddns.net'

# turn off the side monitors for VNC remote desktop
# for when away from keyboard (afk)

alias mine='cd phoenixminer-5.6d && ./Start_miner.sh'

# start jupyter with different language kernels
alias swift-notebook="cd ~/Swift/swift-jupyter && conda deactivate && conda activate swift-tensorflow && python3 register.py --sys-prefix --swift-python-use-conda --use-conda-shared-libs --swift-toolchain /home/jasonsohn/Swift/toolchain && jupyter notebook --port 8888 --notebook-dir ~"

alias cpp-notebook="conda deactivate && conda deactivate && conda activate cling && jupyter lab --port 8888 --notebook-dir ~"
