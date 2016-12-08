FROM jupyter/datascience-notebook

RUN pip install --upgrade pip
# RUN pip3 install beautifulsoup4 ## already installed in conda
RUN pip3 install polyglot
RUN pip3 install -U textblob
RUN python -m textblob.download_corpora
RUN pip3 install datasketch
