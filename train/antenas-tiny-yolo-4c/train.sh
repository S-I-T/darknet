#!/bin/bash

PREFIX=antenas-tiny-yolo-4c
BASE_DIR=/root/src/darknet
TRAIN_DIR=/root/src/darknet/train/$PREFIX

DATA_FILE=$TRAIN_DIR/${PREFIX}.data
CFG_FILE=$TRAIN_DIR/${PREFIX}.cfg
WEIGHTS_FILE=/root/models/public/darknet19_448.conv.23


cd $BASE_DIR

./darknet detector train $DATA_FILE $CFG_FILE $WEIGHTS_FILE

