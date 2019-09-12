#!/bin/bash

IMAGE=singularity-octave
DIRECTORY=~/.singularity

FILES=($DIRECTORY/$IMAGE.simg ~/bin/octave)

for FILE in "${FILES[@]}"
do
	echo "Removing "$FILE
	if [ -f $FILE ]; then
		rm -fv $FILE
	fi
done
