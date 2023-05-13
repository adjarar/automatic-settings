MODELS_DIR="/home/webui/automatic/models"
mkdir $MODELS_DIR

# automatic user settings
cd /home/webui/automatic
wget -q https://raw.githubusercontent.com/adjarar/automatic-user-files/main/webui-user.sh -O webui-user.sh
wget -q https://raw.githubusercontent.com/adjarar/automatic-user-files/main/config.json -O config.json

# webui user settings
cd /home/webui
git clone https://github.com/adjarar/invokeai-settings.git
mv /home/webui/invokeai-settings/* /home/webui/invokeai/

# Install extensions
cd /home/webui/automatic/extensions
git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111.git
git clone https://github.com/Elldreth/loopback_scaler.git

# Upscale models
mkdir $MODELS_DIR/ESRGAN
cd $MODELS_DIR/ESRGAN
wget -q https://huggingface.co/lokCX/4x-Ultrasharp/resolve/main/4x-UltraSharp.pth

# VAE
mkdir $MODELS_DIR/VAE
cd $MODELS_DIR/VAE
wget -q https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.ckpt \
        https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt

# Controlnet Models
mkdir $MODELS_DIR/ControlNet
cd $MODELS_DIR/ControlNet
wget -q https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth \
        https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth \
        https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth \
        https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth \

# SD Models
mkdir $MODELS_DIR/Stable-diffusion
cd $MODELS_DIR/Stable-diffusion
wget -q https://huggingface.co/satoris/adam/resolve/main/sd1-5_adam-ep100-gs00900.ckpt \
        https://huggingface.co/satoris/sd-v1-5-adam-inpainting/resolve/main/sd-v1-5-adam-inpainting.ckpt
