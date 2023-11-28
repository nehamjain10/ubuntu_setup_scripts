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
