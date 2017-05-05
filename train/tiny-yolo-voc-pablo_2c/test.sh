#!/bin/bash

BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/tiny-yolo-voc-pablo_2c

TEST_DIR=$TRAIN_DIR/test
DATA_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.data
CFG_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.cfg
WEIGHTS_FILE=/root/models/train/tiny-yolo-voc-pablo_2c/tiny-yolo-voc-pablo_2c_final.weights

cd $BASE_DIR

for FILE in $TEST_DIR/*.jpg
do
  echo "Procesando $f..."
  ./darknet detector test $DATA_FILE $CFG_FILE $WEIGHTS_FILE $FILE
  mv predictions.png tiny-yolo-voc-pablo_2c_${FILE##*/}.jpg
done



