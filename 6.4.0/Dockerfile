FROM gnuoctave/octave:6.4.0

LABEL "MAINTAINER"="icaoberg"
LABEL "EMAIL"="icaoberg@psc.edu"
LABEL "SUPPORT"="help@psc.edu"
LABEL "REPOSITORY"="http://github.com/pscedu/singularity-octave"
LABEL "COPYRIGHT"="Copyright © 2021-2022 Pittsburgh Supercomputing Center. All Rights Reserved."
LABEL "VERSION"="6.4.0"

USER root
RUN apt-get update && \
	apt-get install -y gnuplot pandoc nano && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=general-2.1.1.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=image-2.12.0.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=io-2.6.3.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=control-3.3.1.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=signal-1.4.1.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=struct-1.0.17.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=parallel-4.0.1.tar.gz" && \
	octave --eval "pkg install https://octave.sourceforge.io/download.php?package=splines-1.3.4.tar.gz"

