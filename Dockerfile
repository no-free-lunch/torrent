#FROM continuum/miniconda3
FROM moremagic/jupyter:opencv
MAINTAINER chck

RUN \
  apt-get update -y && \
  apt-get install -y vim

RUN \
  mkdir /work

WORKDIR \
  /work

ADD \
  requirements.txt /work

RUN \
  pip install --upgrade pip && \
  pip install --upgrade -r requirements.txt

