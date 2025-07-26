#!/bin/bash

set -x  # Print each command for debugging

VERSION=10.2.0
PACKAGE=octave
SIF="singularity-${PACKAGE}-${VERSION}.sif"

# ──────────────────────────────────────────────────────────────
# Step 1: Try to load module if available (e.g., on HPC)
# ──────────────────────────────────────────────────────────────
if command -v module >/dev/null 2>&1 && module avail octave 2>&1 | grep -q octave; then
    echo "Loading Octave module"
    module load octave

# ──────────────────────────────────────────────────────────────
# Step 2: Fallback to Singularity container if image exists
# ──────────────────────────────────────────────────────────────
elif [ -f "$SIF" ]; then
    echo "Using Singularity fallback with image: $SIF"
    alias octave="singularity exec $SIF octave -W"
    alias gnuplot="singularity exec $SIF gnuplot"

# ──────────────────────────────────────────────────────────────
# Step 3: Assume system-installed Octave/Gnuplot (e.g., GitHub Actions)
# ──────────────────────────────────────────────────────────────
else
    echo "No module or Singularity image found. Assuming system-installed Octave and Gnuplot."
fi

# ──────────────────────────────────────────────────────────────
# Step 4: Verify dependencies are available
# ──────────────────────────────────────────────────────────────
command -v octave >/dev/null 2>&1 || { echo "Error: Octave is required but not installed."; exit 1; }
command -v gnuplot >/dev/null 2>&1 || { echo "Error: Gnuplot is required but not installed."; exit 1; }

# ──────────────────────────────────────────────────────────────
# Step 5: Generate sine wave data using Octave
# ──────────────────────────────────────────────────────────────
octave --no-gui --quiet << EOF
x = 0:0.1:10;           % X range from 0 to 10 with step 0.1
y = sin(x);             % Compute sine of x
data = [x' y'];         % Combine x and y into a matrix
save -ascii sine_data.dat data;  % Save data to file
EOF

# ──────────────────────────────────────────────────────────────
# Step 6: Plot the sine wave using Gnuplot
# ──────────────────────────────────────────────────────────────
gnuplot << EOF
set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output 'plot.png'
set title "Sine Wave Plot"
set xlabel "X"
set ylabel "Y"
set grid
plot 'sine_data.dat' using 1:2 with lines title 'sin(x)' lw 2
EOF

# ──────────────────────────────────────────────────────────────
# Step 7: Validate output and clean up
# ──────────────────────────────────────────────────────────────
if [ -f "plot.png" ]; then
    echo "✅ Successfully saved plot.png to disk."
else
    echo "❌ Error: Failed to save plot.png to disk."
    exit 1
fi

rm -f sine_data.dat
