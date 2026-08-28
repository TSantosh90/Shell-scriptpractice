#!/bin/bash

NUM1=100
NUM2=200

SUM=$(($NUM1+$NUM2))

echo "Sum is:$SUM"

#Array

FRUITS=("GUAVA","APPLE","BANANA")
echo "FRUITS ARE ${FRUITS[@]}"
echo "FIRST FRUIT IS: ${FRUITS[0]}"
echo "SECOND FRUIT IS: ${FRUITS[1]}"
echo "THIRD FRUIT IS: ${FRUITS[2]}"