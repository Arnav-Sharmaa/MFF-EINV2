# #!/bin/bash

# GPU_ID=2

# CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train --port=12360
#!/bin/bash

#!/bin/bash

GPU_ID=0

export PYTHONUNBUFFERED=1
export CUDA_LAUNCH_BLOCKING=1
export OMP_NUM_THREADS=1

echo "Starting training with GPU:$GPU_ID"
nvidia-smi

CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train \
    --config_file ./configs/ein_seld/seld.yaml \
    --num_workers 0 \
    --batch_size 2 \
    --max_epoch 2

echo "Training completed with exit code $?"