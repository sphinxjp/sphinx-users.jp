FROM python:3.8-slim

RUN apt-get update \
    && apt-get install -y gettext git graphviz make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install -U setuptools pip
RUN mkdir -p /doc
WORKDIR /doc
COPY ./requirements.txt /doc/requirements.txt
RUN pip install -r /doc/requirements.txt

CMD bash
