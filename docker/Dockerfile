# FROM nvcr.io/nvidia/cuda:11.8.0-devel-ubuntu20.04
FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONPATH="${PYTHONPATH}:/root/marl-copa"
ENV export PYTHONPATH="${PYTHONPATH}:/work/yoshiki-y/copa/src/marl-copa"

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

WORKDIR /root/marl-copa

RUN apt-get update && apt-get install -y \
    git \
    locales \
    xterm \
    dbus-x11 \
    terminator \
    sudo \
    unzip \
    lsb-release \
    curl \
    net-tools \
    software-properties-common \
    subversion \
    libssl-dev \
    htop \
    gedit \
    gdb \
    valgrind \
    build-essential \
    bash-completion \
    python3-pip \
    vim \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    cmake \
    libopenmpi-dev \
    wget && \
    apt-get clean && rm -rf /var/lib/apt/list*




RUN python3 -m pip install opencv-python \
			   matplotlib \
			   pyyaml \
			   numpy==1.24.3 \
                           baselines \
			   tensorboardx\ 
			   seaborn \
			   ipdb \
			   pyglet==1.3.2 \
			   scikit-learn \
			   umap-learn \
			   dataprep \
			   ray \
         wandb \
			   envpool \
         aiofiles \
         plotly
			   

RUN pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117
# RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
