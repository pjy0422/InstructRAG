DATASET=NaturalQuestions # [PopQA, TriviaQA, NaturalQuestions, 2WikiMultiHopQA, ASQA]
MODEL=InstructRAG-ICL # [InstructRAG-FT, InstructRAG-ICL]

CUDA_VISIBLE_DEVICES=6 python src/inference.py \
  --dataset_name $DATASET \
  --rag_model $MODEL \
  --n_docs 5 \
  --output_dir eval_results/${MODEL}/${DATASET} \
  --max_instance 10
  # --load_local_model # Uncomment this line if you want to load a local model