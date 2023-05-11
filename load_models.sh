models_dir="/home/webui/models"
mkdir $models_dir

# automatic user settings
cd /home/webui/automatic
wget -q https://raw.githubusercontent.com/adjarar/webui-docker-files/latest/webui-user.sh -O webui-user.sh \
https://raw.githubusercontent.com/adjarar/automatic-user-files/main/config.json -O config.json

# Extensions
cd /home/webui/automatic/extensions
git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111.git
git clone https://github.com/Elldreth/loopback_scaler.git

# Upscale models
mkdir $models_dir/ESRGAN
cd $models_dir/ESRGAN
wget -q https://huggingface.co/lokCX/4x-Ultrasharp/resolve/main/4x-UltraSharp.pth

# VAE
mkdir $models_dir/VAE
cd $models_dir/VAE
wget -q https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.ckpt \
https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt

# Controlnet Models
mkdir $models_dir/Controlnet
cd $models_dir/Controlnet
wget -q https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth \
https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth \
https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth \
https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth \

# SD Models
mkdir $models_dir/Stable-diffusion
cd $models_dir/Stable-diffusion
wget -q https://huggingface.co/satoris/adam/resolve/main/sd1-5_adam-ep100-gs00900.ckpt \
https://huggingface.co/satoris/sd-v1-5-adam-inpainting/resolve/main/sd-v1-5-adam-inpainting.ckpt
