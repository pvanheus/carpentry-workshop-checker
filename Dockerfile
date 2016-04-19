FROM continuumio/anaconda3:latest

MAINTAINER Peter van Heusden <pvh@sanbi.ac.za>

ENV PATH /opt/conda/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

# make sure we've got the requirements for the template checker
RUN conda install -y nose pyyaml

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
