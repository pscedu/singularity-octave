Bootstrap: docker
From: ubuntu:16.04

IncludeCmd: yes

%labels
    MAINTAINER icaoberg@cmu.edu
    WEBSITE http://www.cbd.cmu.edu/icaoberg
    VERSION 1.0

%runscript
    exec /bin/bash "$@"

%post
    echo "Update and upgrade"
    /usr/bin/apt-get update && apt-get install -y --no-install-recommends apt-utils

####################################################################################
%appenv octave
    APP=/path/to/octave
    export APP

%apphelp gifgen
    For more information about goto visit http://www.octave.info

%apprun octave
    octave "$@"
