#!/bin/bash

set -x  # Print commands for debugging

VERSION=10.2.0
PACKAGE=octave
SIF="singularity-${PACKAGE}-${VERSION}.sif"

# ──────────────────────────────────────────────────────────────
# Step 1: Select the octave/gnuplot command based on environment
# ──────────────────────────────────────────────────────────────
if command -v module >/dev/null 2>&1 && module avail octave 2>&1 | grep -q octave; then
    echo "Loading Octave module"
    module load octave
    OCTAVE_CMD="octave"
    GNUPLOT_CMD="gnuplot"

elif [ -f "$SIF" ]; then
    echo "Using Singularity container: $SIF"
    OCTAVE_CMD="singularity exec $SIF octave -W"
    GNUPLOT_CMD="singularity exec $SIF gnuplot"

else
    echo "No module or Singularity image found. Using system-installed commands."
    OCTAVE_CMD="octave"
    GNUPLOT_CMD="gnuplot"
fi

# ──────────────────────────────────────────────────────────────
# Step 2: Validate that commands are available
# ──────────────────────────────────────────────────────────────
$OCTAVE_CMD --version >/dev/null 2>&1 || { echo "❌ Error: Octave is not available."; exit 1; }
$GNUPLOT_CMD --version >/dev/null 2>&1 || { echo "❌ Error: Gnuplot is not available."; exit 1; }

# ──────────────────────────────────────────────────────────────
# Step 3: Generate sine wave data using Octave
# ──────────────────────────────────────────────────────────────
$OCTAVE_CMD --no-gui --quiet << EOF
x = 0:0.1:10;
y = sin(x);
data = [x' y'];
save -ascii sine_data.dat data;
EOF

# ──────────────────────────────────────────────────────────────
# Step 4: Plot the data using Gnuplot
# ──────────────────────────────────────────────────────────────
$GNUPLOT_CMD << EOF
set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output 'plot.png'
set title "Sine Wave Plot"
set xlabel "X"
set ylabel "Y"
set grid
plot 'sine_data.dat' using 1:2 with lines title 'sin(x)' lw 2
EOF

# ──────────────────────────────────────────────────────────────
# Step 6: Cleanup
# ──────────────────────────────────────────────────────────────
rm -f sine_data.dat
