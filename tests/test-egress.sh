#!/bin/bash

echo "Starting egress rules testing: $(date)"


rules=("ema.platta-net.hel.fi")


for N in ${rules[@]}
do
	nc -zv $N 25
done