FROM python:3.7.3

RUN apt-get update \
    && apt-get install -y gettext graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install -U setuptools pip
RUN mkdir -p /doc
WORKDIR /doc
COPY ./requirements.txt /doc/requirements.txt
RUN pip install -r /doc/requirements.txt

CMD bash
