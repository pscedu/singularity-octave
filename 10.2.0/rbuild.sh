#!/bin/bash

# Copyright © 2024-2025 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-octave-10.2.0.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

if [ -f $DEFINITION ]; then
	singularity build --remote $IMAGE $DEFINITION
fi

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
