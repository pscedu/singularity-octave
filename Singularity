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
    echo "Update aptitude"
    /usr/bin/apt-get update && apt-get install -y --no-install-recommends apt-utils

####################################################################################
%appenv gnuplot
    APP=/path/to/gnuplot
    export APP

%apphelp gifgen
    For more information about goto visit http://www.gnuplot.info

%apprun gnuplot
    gnuplot "$@"

####################################################################################
%appenv ffmpeg
    APP=/usr/bin/ffmpeg
    export APP

%apphelp ffmpeg
    For more information about ffmpeg visit https://www.ffmpeg.org/

%apprun ffmpeg
    ffmpeg "$@"
