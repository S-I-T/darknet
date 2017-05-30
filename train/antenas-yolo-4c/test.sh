#!/bin/bash

PREFIX=antenas-yolo-4c
BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/$PREFIX

DATA_FILE=$TRAIN_DIR/${PREFIX}.data
CFG_FILE=$TRAIN_DIR/${PREFIX}.cfg
WEIGHTS_FILE=/root/models/train/${PREFIX}/${PREFIX}_8000.weights
TEST_DIR=$TRAIN_DIR/test

cd $BASE_DIR

for FILE in $TEST_DIR/*.jpg
do
  echo "Procesando $f..."
  ./darknet detector test $DATA_FILE $CFG_FILE $WEIGHTS_FILE $FILE
  mv predictions.png $TRAIN_DIR/${PREFIX}_${FILE##*/}.png
done



