#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-octave-6.2.0.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

#docker build -t pscedu/octave:6.2.0 .
#sudo singularity build $IMAGE library://pscedu/octave:6.2.0

singularity build --remote $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi

