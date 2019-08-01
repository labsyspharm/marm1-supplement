FROM jupyter/scipy-notebook:7a3e968dd212

USER root

RUN apt-get install -y wget

USER jovyan

RUN \
    mkdir ~/bionetgen \
    && cd ~/bionetgen \
    && wget "https://github.com/RuleWorld/bionetgen/archive/BioNetGen-2.3.2.tar.gz" \
    && tar xzf BioNetGen-2.3.2.tar.gz \
    && rm -f BioNetGen-2.3.2.tar.gz

ENV BNGPATH=/home/jovyan/bionetgen/bionetgen-BioNetGen-2.3.2/bng2

RUN \
    pip install git+git://github.com/jmuhlich/pysb.git@marm1-integration python-libsbml cite2c \
    && python -m cite2c.install

COPY --chown=jovyan:users / /home/jovyan/
