#FROM continuum/miniconda3
FROM moremagic/jupyter:opencv
MAINTAINER chck

RUN \
  mkdir /work

WORKDIR \
  /work

ADD \
  requirements.txt /work

RUN \
  pip install --upgrade pip && \
  pip install --upgrade -r requirements.txt

