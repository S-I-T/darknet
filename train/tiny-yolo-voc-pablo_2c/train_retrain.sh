#!/bin/bash
BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/tiny-yolo-voc-pablo_2c

DATA_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.data
CFG_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.cfg
WEIGHTS_FILE=/root/models/train/tiny-yolo-voc-pablo_2c/tiny-yolo-voc-pablo_2c_40000.weights

cd $BASE_DIR

./darknet detector train $DATA_FILE $CFG_FILE $WEIGHTS_FILE


