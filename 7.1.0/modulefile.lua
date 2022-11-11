--
-- octave 7.1.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations."
-- "Keywords: singularity utilities"

whatis("Name: octave")
whatis("Version: 7.1.0")
whatis("Category: Other")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations.")

help([[
GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations.

To load the module type

> module load octave/7.1.0

To unload the module type

> module unload octave/7.1.0

Tools included in this module are

* octave-cli
* gnuplot
* pandoc

For simplicty, this container also contains

* vim
* imagemagick
* ffmpeg
]])

local package = "octave"
local version = "7.1.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
