# this  script sets up Swift for Jupyter Notebook, for Ubuntu 20.04
# but uses the latest toolchain. The toolchain from https://github.com/google/swift-jupyter is outdated.
mkdir ~/Swift
mkdir ~/Swift/swift-jupyter
mkdir ~/Swift/toolchain

# download jupyter swift core
git clone https://github.com/google/swift-jupyter.git ~/Swift

# create conda env
conda init
conda deactivate
conda deactivate
conda create -n swift-tensorflow python=3.6
conda activate swift-tensorflow
conda install jupyter numpy matplotlib

# install dependencies for toolchain
apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev

# download toolchain

# toolchain link from google/swift-jupyter tutorial: (likely outdated)
#wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.13/swift-tensorflow-RELEASE-0.13-ubuntu20.04.tar.gz -P ~/Swift/swift-jupyter

wget https://swift.org/builds/swift-5.4.2-release/ubuntu2004/swift-5.4.2-RELEASE/swift-5.4.2-RELEASE-ubuntu20.04.tar.gz -P ~/Swift/toolchain

tar xvf ~/Swift/toolchain/* -C ~/Swift/toolchain

# see .bashrc for appended PATH

# register Swift kernel to jupyter
cd ~/Swift/swift-jupyter
python3 register.py --sys-prefix --swift-python-use-conda --use-conda-shared-libs --swift-toolchain ~/Swift/toolchain/swift-5.4.2-RELEASE-ubuntu20.04
