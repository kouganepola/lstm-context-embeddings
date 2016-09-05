#!/bin/bash
cd ~/lstm-context-embeddings
for i in `seq 0 9`;
do
	python train_cv.py --word2vec=GoogleNews-vectors-negative300.bin --cv_index=$i 2>&1 | tee outputs/output-$i.txt
done

