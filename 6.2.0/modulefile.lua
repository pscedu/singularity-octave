--
-- octave 6.2.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations."
-- "Keywords: singularity utilities"

whatis("Name: octave")
whatis("Version: 6.2.0")
whatis("Category: Other")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations.")

help([[
GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations.

To load the module type

> module load octave/6.2.0

To unload the module type

> module unload octave/6.2.0

Tools included in this module are

* octave-cli
* gnuplot
* pandoc

The Octave packages installed in this container are

* general 2.1.1
* image 2.12.0
* io 2.6.3
* control 3.3.1
* signal 1.4.1
* struct 1.0.17
* parallel 4.0.1
* splines 1.3.4
]])

local package = "octave"
local version = "6.2.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
