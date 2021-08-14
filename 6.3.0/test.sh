#!/bin/bash

tree .

singularity exec singularity-octave-6.3.0.sif octave-cli --help
singularity exec singularity-octave-6.3.0.sif pandoc --help
singularity exec singularity-octave-6.3.0.sif gnuplot --help
