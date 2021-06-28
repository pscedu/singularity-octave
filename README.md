![Status](https://github.com/pscedu/singularity-octave/actions/workflows/main.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-octave)
![forks](https://img.shields.io/github/forks/pscedu/singularity-octave)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-octave)
![License](https://img.shields.io/github/license/pscedu/singularity-octave)

# singularity-octave
![Octave](https://www.gnu.org/software/octave/img/GNU_Octave_4-4-0_screenshot_1600x900.png)

Singularity recipe for [octave](https://www.gnu.org/software/octave/).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `octave` script

to `/opt/packages/octave/6.2.0`.

Copy the file `modulefile.lua` to `/opt/modulefiles/octave` as `6.2.0.lua`.

## Building the image using the recipe

### To build the image locally
Run the script `build.sh` to build image locally

```
bash ./build.sh
````

### To build the image remotely
Run the script `rbuild.sh` to build image remotely

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
