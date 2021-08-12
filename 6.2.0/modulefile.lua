--
-- octave 6.2.0 modulefile
--
-- "URL: https://www.gnu.org/software/octave/index"
-- "Category: Biological Sciences"
-- "Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations. Octave helps in solving linear and nonlinear problems numerically, and for performing other numerical experiments using a language that is mostly compatible with MATLAB.are cross-validated, again by the cross entropy measure, to check for problems with the alignment or group assignment."
-- "Keywords: singularity utilities"

whatis("Name: octave")
whatis("Version: 6.2.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.gnu.org/software/octave/index")
whatis("Description: GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations. Octave helps in solving linear and nonlinear problems numerically, and for performing other numerical experiments using a language that is mostly compatible with MATLAB. ")

help([[
octave 6.2.0
-----------
GNU Octave is software featuring a high-level programming language, primarily intended for numerical computations. Octave helps in solving linear and nonlinear problems numerically, and for performing other numerical experiments using a language that is mostly compatible with MATLAB.

Description
-----------
To load the module, type

> module load octave/6.2.0

To unload the module, type

> module unload octave/6.2.0

Repository
----------
Tools included in this module are

* octave
]])

local package = "octave"
local version = "6.2.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
