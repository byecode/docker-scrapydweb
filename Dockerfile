FROM python:3.6-slim
ADD . /app
WORKDIR /app

EXPOSE 5000
RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install logparser && \
  pip3 install Pillow && \
  pip3 install -U git+https://github.com/byecode/scrapydweb.git && \
  apt-get remove -y git
CMD scrapydweb
