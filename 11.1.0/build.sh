#!/bin/bash

# Copyright © 2024-2026 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-octave-11.1.0.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi

