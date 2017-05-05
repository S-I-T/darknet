#!/bin/bash

BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/tiny-yolo-voc-pablo_2c

DATA_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.data
CFG_FILE=$TRAIN_DIR/tiny-yolo-voc-pablo_2c.cfg
WEIGHTS_FILE=/root/models/public/darknet19_448.conv.23


cd $BASE_DIR

./darknet detector train $DATA_FILE $CFG_FILE $WEIGHTS_FILE


