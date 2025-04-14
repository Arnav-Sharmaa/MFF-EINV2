# #!/bin/bash

# GPU_ID=2

# CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train --port=12360
#!/bin/bash

#!/bin/bash

GPU_ID=0

ho "Starting training with GPU:$GPU_ID"
nvidia-smi

CUDA_VISIBLE_DEVICES=$GPU_ID python code/main.py train 

echo "Training completed with exit code $?"