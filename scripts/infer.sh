#!/bin/bash

GPU_ID=0

export CUDA_VISIBLE_DEVICES=$GPU_ID
export PYTHONUNBUFFERED=1

python code/main.py infer \
    --config_file ./configs/ein_seld/seld.yaml 