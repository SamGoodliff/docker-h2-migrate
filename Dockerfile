FROM python:2.7.16

RUN apt-get update && apt-get install -y make bash zip git mercurial

RUN pip install mercurial

WORKDIR /opt

RUN git clone https://github.com/frej/fast-export

COPY h2-migrate.sh /opt

CMD ["bash", "-f", "h2-migrate.sh", "/mercurial", "/git"]