#!/bin/bash

# Install Anaconda
echo "Installing Anaconda..."
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64 -b -p $HOME/anaconda3
export PATH="$HOME/anaconda3/bin:$PATH"
rm Anaconda3-2023.09-0-Linux-x86_64.sh

# Initialize conda
conda init zsh
source ~/.zshhrc

# Create a new conda environment
echo "Creating a new conda environment..."
conda create -n pytorch python=3.8
conda activate pytorch

# Install PyTorch and torchvision
echo "Installing PyTorch and torchvision..."
conda install pytorch==1.13.0 torchvision==0.14.0 torchaudio==0.13.0 pytorch-cuda=11.6 -c pytorch -c nvidia

# Install tcnn
echo "Installing tcnn..."

echo "Setup complete. You can activate the environment using 'conda activate myenv'."
