# #!/bin/bash

# GPU_ID=2

# CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train --port=12360
#!/bin/bash

# Fix 1: Kaggle typically only has GPU 0 available
GPU_ID=0

# Fix 2: Add critical environment variables
export PYTHONUNBUFFERED=1
export CUDA_LAUNCH_BLOCKING=1
export OMP_NUM_THREADS=1

# Fix 3: Add debug output
echo "Starting training with GPU:$GPU_ID"
nvidia-smi  # Verify GPU visibility

# Fix 4: Simplify the command for Kaggle environment
CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train 
# Fix 5: Add completion message
echo "Training completed with exit code $?"