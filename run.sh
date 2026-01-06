#!/bin/sh

export OPENBLAS_NUM_THREADS=14
export OMP_NUM_THREADS=14
export MKL_NUM_THREADS=14
export TORCH_NUM_THREADS=14

python3.11 run.py \
  --execution-provider coreml \
  --execution-threads 14 \
  --live-mirror \
  --video-quality 51 \
  --max-memory 16 \
  --frame-processor face_swapper face_enhancer
