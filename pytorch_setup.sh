
# Create a new conda environment
echo "Creating a new conda environment..."
conda create -n pytorch python=3.8
conda activate pytorch

# Install PyTorch and torchvision
echo "Installing PyTorch and torchvision..."
conda install pytorch==1.13.0 torchvision==0.14.0 torchaudio==0.13.0 pytorch-cuda=11.6 -c pytorch -c nvidia

echo "Setup complete. You can activate the environment using 'conda activate myenv'."
