#!/bin/bash

module load octave

# Check if octave and gnuplot are installed
command -v octave >/dev/null 2>&1 || { echo "Error: Octave is required but not installed."; exit 1; }
command -v gnuplot >/dev/null 2>&1 || { echo "Error: GNUplot is required but not installed."; exit 1; }

# Generate sine wave data using Octave
octave --no-gui --quiet << EOF
x = 0:0.1:10;           % X range from 0 to 10 with step 0.1
y = sin(x);             % Compute sine of x
data = [x' y'];         % Combine x and y into a matrix
save -ascii sine_data.dat data;  % Save data to file
EOF

# Create the plot using GNUplot
gnuplot << EOF
set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output 'plot.png'
set title "Sine Wave Plot"
set xlabel "X"
set ylabel "Y"
set grid
plot 'sine_data.dat' using 1:2 with lines title 'sin(x)' lw 2
EOF

# Check if plot.png was created
if [ -f "plot.png" ]; then
    echo "true"
else
    echo "Error: Failed to save plot.png to disk."
    exit 1
fi

# Clean up data file
rm -f sine_data.dat
