# Path to checkpoint file or a directory containing checkpoint files. Passing
# a directory will only work if there is also a file named 'checkpoint' which
# lists the available checkpoints in the directory. It will not work if you
# point to a directory with just a copy of a model checkpoint: in that case,
# you will need to pass the checkpoint path explicitly.
IM2TXT="${HOME}/youngjung/im2txt"
#CHECKPOINT_PATH="${IM2TXT}/model/train"
CHECKPOINT_PATH="${IM2TXT}/model/train_sanity_check"

# Vocabulary file generated by the preprocessing script.
VOCAB_FILE="${DATASET_DIR}/mscoco/forShowAndTell/word_counts.txt"

# JPEG image file to caption.
# Run inference to generate captions.
export CUDA_VISIBLE_DEVICES=""
IM1="${DATASET_DIR}/mscoco/val2014/COCO_val2014_000000224437.jpg"
IM2="${DATASET_DIR}/mscoco/val2014/COCO_val2014_000000224426.jpg"
IM3="${DATASET_DIR}/mscoco/val2014/COCO_val2014_000000224477.jpg"
python im2txt/run_inference.py \
  --checkpoint_path=${CHECKPOINT_PATH} \
  --vocab_file=${VOCAB_FILE} \
  --input_files=${IM1},${IM2},${IM3}
