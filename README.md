# pytorch-jupyter

Docker image build on top of walkerlab/pytorch images

Currently Avaliable Tags:
```
cuda-11.3.1-pytorch-1.12.0-torchvision-0.12.0-torchaudio-0.11.0-ubuntu-20.04
cuda-11.3.1-pytorch-1.11.0-torchvision-0.12.0-torchaudio-0.11.0-ubuntu-20.04
cuda-11.6.1-pytorch-1.12.0-torchvision-0.12.0-torchaudio-0.11.0-ubuntu-20.04
cuda-11.6.1-pytorch-1.11.0-torchvision-0.12.0-torchaudio-0.11.0-ubuntu-20.04
```

Important Notes:
- By default it written to use jupyter lab
- The default password is walkerlab, and the configuration is listed in jupyter_server_config.py (If you wish to modify, mount your own jupyter_server_config.py in /root/.jupyter/)