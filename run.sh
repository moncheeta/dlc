#!/bin/sh

THREADS=${1:-8}

export OPENBLAS_NUM_THREADS=$THREADS
export OMP_NUM_THREADS=$THREADS
export MKL_NUM_THREADS=$THREADS
export TORCH_NUM_THREADS=$THREADS

python3.11 run.py \
  --execution-provider coreml \
  --execution-threads $THREADS \
  --live-mirror \
  --video-quality 51 \
  --max-memory 16 \
  --frame-processor face_swapper face_enhancer
