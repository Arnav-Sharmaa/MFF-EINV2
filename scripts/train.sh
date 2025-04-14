# #!/bin/bash

# GPU_ID=2

# CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train --port=12360
#!/bin/bash

#!/bin/bash

GPU_ID=0

# Add these critical environment variables
export XLA_FLAGS=--xla_gpu_cuda_data_dir=/usr/local/cuda
export TF_FORCE_GPU_ALLOW_GROWTH=true
export TF_CPP_MIN_LOG_LEVEL=3
export CUDA_VISIBLE_DEVICES=$GPU_ID
export PYTHONUNBUFFERED=1

echo "Starting training with GPU:$GPU_ID"
nvidia-smi

python code/main.py train --num_workers 0  # Force single-process

echo "Training completed with exit code $?"