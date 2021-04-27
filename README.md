# singularity-octave
[![Build Status](https://www.travis-ci.com/icaoberg/singularity-octave.svg?branch=main)](https://www.travis-ci.com/icaoberg/singularity-octave)

![Octave](https://www.gnu.org/software/octave/img/GNU_Octave_4-4-0_screenshot_1600x900.png)

Singularity recipe for [octave](https://www.gnu.org/software/octave/).

## Building the image using the recipe

### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image locally.

```
bash ./build.sh
```

## Installing the container on Bridges (or similar)
Copy the

* `SIF` file
* and the `octave` and `octave-gui` scripts

to `/opt/packages/octave/6.2.0`.

Copy the file `modulefile.lua` to `/opt/modules/octave` as `6.2.0.lua`.

---
Copyright © 2021 Pittsburgh Supercomputing Center. All Rights Reserved.

[icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
