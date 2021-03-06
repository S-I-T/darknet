#!/bin/bash
PREFIX=yolo-voc-pablo_2c
BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/$PREFIX

DATA_FILE=$TRAIN_DIR/${PREFIX}.data
CFG_FILE=$TRAIN_DIR/${PREFIX}.cfg
WEIGHTS_FILE=/root/models/train/${PREFIX}/${PREFIX}_8000.weights

cd $BASE_DIR

./darknet detector train $DATA_FILE $CFG_FILE $WEIGHTS_FILE

