FROM jupyter/datascience-notebook

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
        libicu-dev \
    && rm -rf /var/lib/apt/lists/*

USER jovyan
RUN pip install --upgrade pip
# RUN pip3 install beautifulsoup4 ## already installed in conda
RUN pip3 install polyglot
RUN pip3 install -U textblob
RUN python -m textblob.download_corpora
RUN pip3 install datasketch
RUN pip3 install -U spacy
RUN python -m spacy.en.download all

